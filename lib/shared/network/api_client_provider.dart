import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/adapter.dart';
import 'package:thrive_mobile_app/shared/utils/environment.dart';
import '../../shared/utils/extensions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import '../../shared/network/api_response/api_response.dart';
import '../../shared/network/interceptors/dio_interceptor_wrapper.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';

class ApiClient {
  late final Dio _dio;
  final Reader _reader;
  late final String _baseUrl;
  final Connectivity _connectivity;
  final PreferenceManager _preferenceManager;

  ApiClient(
    this._reader,
    this._connectivity,
    this._preferenceManager,
  ) {
    _baseUrl = getBaseUrl();

    _dio = Dio();
    _dio.options.sendTimeout = 10000;
    _dio.options.connectTimeout = 10000;
    _dio.options.receiveTimeout = 10000;

    _dio.interceptors.clear();
    _dio.interceptors.add(
      DioInterceptorWrapper(
        _dio,
        _reader,
        _baseUrl,
        _connectivity,
        _preferenceManager,
      ),
    );

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return null;
    };

    _dio.dioLogger;
  }

  Dio get getDioInstance {
    return _dio;
  }

  Future<APIResponse> postRequest(
    String path,
    dynamic request, {
    String? newBaseUrl,
    Map<String, dynamic>? query,
    bool checkStatusCodeOnly = false,
  }) async {
    try {
      final apiResponse = await _dio.post(
        getFullUrl(path, newBaseUrl),
        data: request,
        queryParameters: query,
      );

      return apiResponse.handleApiResponse(checkStatusCodeOnly);
    } catch (e) {
      return e.handleApiException();
    }
  }

  Future<APIResponse> putRequest(
    String path,
    dynamic request, {
    String? newBaseUrl,
    Map<String, dynamic>? query,
    bool checkStatusCodeOnly = false,
  }) async {
    try {
      final apiResponse = await _dio.put(
        getFullUrl(path, newBaseUrl),
        data: request,
        queryParameters: query,
      );

      return apiResponse.handleApiResponse(checkStatusCodeOnly);
    } catch (e) {
      return e.handleApiException();
    }
  }

  Future<APIResponse> deleteRequest(
    String path, {
    String? newBaseUrl,
    Map<String, dynamic>? query,
    bool checkStatusCodeOnly = false,
  }) async {
    try {
      final apiResponse = await _dio.delete(
        getFullUrl(path, newBaseUrl),
        queryParameters: query,
      );

      return apiResponse.handleApiResponse(checkStatusCodeOnly);
    } catch (e) {
      return e.handleApiException();
    }
  }

  Future<APIResponse> getRequest(
    String path, {
    String? newBaseUrl,
    Map<String, dynamic>? query,
    bool checkStatusCodeOnly = false,
  }) async {
    try {
      final apiResponse = await _dio.get(
        getFullUrl(path, newBaseUrl),
        queryParameters: query,
      );

      return apiResponse.handleApiResponse(checkStatusCodeOnly);
    } catch (e) {
      return e.handleApiException();
    }
  }

  String getFullUrl(String path, String? newBaseUrl) {
    String url = _baseUrl + path;

    if (newBaseUrl != null) {
      url = newBaseUrl + path;
    }

    return url;
  }
}
