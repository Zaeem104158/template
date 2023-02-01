import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../shared/utils/extensions.dart';
import '../../../app/values/api_endpoints.dart';
import '../../../app/exports/app_values_export.dart';
import '../../../app/exports/generated_values_export.dart';
import '../../../features/auth/model/response/login_response.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';

class DioInterceptorWrapper extends QueuedInterceptorsWrapper {
  DioInterceptorWrapper(
    this._dio,
    this._reader,
    this._baseUrl,
    this._connectivity,
    this._preferenceManager,
  );

  final Dio _dio;
  final Reader _reader;
  final String _baseUrl;
  final Connectivity _connectivity;
  final PreferenceManager _preferenceManager;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        return handler.reject(
          DioError(
            type: DioErrorType.other,
            requestOptions: options,
            error: LocaleKeys.internetConnectivityProblem.tr(),
          ),
          true,
        );
      }

      if (isJwtTokenNeeded(options.path)) {
        final token = await _preferenceManager.getString(keyJwtToken);
        options.headers.addAll({"Authorization": "Bearer $token"});
      }
    } catch (e) {
      return handler.reject(
        DioError(
          requestOptions: options,
          error: "Error: ${e.toString()}",
        ),
        true,
      );
    }

    options.headers.addAll({"Content-type": "application/json"});
    return handler.next(options);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    RequestOptions? requestOptions = errorResponse?.requestOptions;

    if (errorResponse?.statusCode == 403) {
      try {
        final refreshTokenDio = Dio();
        refreshTokenDio.dioLogger;

        final refreshToken = await _preferenceManager.getString(
          keyRefreshToken,
        );
        final refreshRequest = {
          keyRefreshTokenId: refreshToken,
        };

        final refreshResponse = await refreshTokenDio.post(
          _baseUrl + refreshEndpoint,
          data: refreshRequest,
        );

        if (refreshResponse.statusCode == 200 && requestOptions?.path != null) {
          LoginResponse response = LoginResponse.fromJson(refreshResponse.data);
          final accessToken = response.payload?.accessToken;
          final refreshToken = response.payload?.refreshToken;

          if (response.success == true &&
              !accessToken.isBlank &&
              !refreshToken.isBlank) {
            await _preferenceManager.setString(
              keyJwtToken,
              accessToken ?? "",
            );
            await _preferenceManager.setString(
              keyRefreshToken,
              refreshToken ?? "",
            );

            final request = await _dio.request(
              requestOptions!.path,
              options: requestOptions.asOptions(),
              data: requestOptions.data,
              queryParameters: requestOptions.queryParameters,
            );

            return handler.resolve(request);
          } else {
            final jwt = await _preferenceManager.getString(keyJwtToken);
            if (jwt != null) {
              await logoutUser(_reader);
              err.error = null;
            }

            return handler.reject(err);
          }
        } else {
          err.error = null;
          return handler.reject(err);
        }
      } catch (e) {
        await logoutUser(_reader);
        err.error = null;
        return handler.reject(err);
      }
    }

    return handler.next(err);
  }

  bool isJwtTokenNeeded(String path) {
    if (path.contains(loginEndpoint) ||
        path.contains(refreshEndpoint) ||
        path.contains(productsEndpoint) ||
        path.contains(termsPrivacyEndpoint) ||
        path.contains(forgetPasswordEndpoint)) {
      return false;
    }

    return true;
  }
}
