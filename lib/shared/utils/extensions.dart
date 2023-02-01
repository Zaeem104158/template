import 'dart:developer';
import 'dart:io';
import 'dart:core';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

import '../../app/values/app_fonts.dart';
import '../../app/model/error/error_response.dart';
import '../../app/model/common/common_response.dart';
import '../../app/exports/generated_values_export.dart';
import '../../shared/network/api_response/api_response.dart';

extension AllCapitalizeExt on String {
  String allCapitalize({String removeCase = ' '}) {
    return toLowerCase().split(removeCase).map((word) {
      String leftText = (word.length > 1) ? word.substring(1, word.length) : '';
      return word[0].toUpperCase() + leftText;
    }).join(' ');
  }
}

extension CapitalizeExt on String {
  String capitalize({String? removeCase}) {
    if (this.isBlank) return "";
    if (this.length == 1) return this.toUpperCase();
    final value = "${this[0].toUpperCase()}${substring(1).toLowerCase()}";

    if (!removeCase.isBlank && !value.isBlank) {
      return value.replaceAll(removeCase!, " ");
    }

    return value;
  }
}

extension BlankCheckExt on String? {
  get isBlank {
    return this == null || this!.isEmpty;
  }
}

extension BlankListCheckExt on List<dynamic>? {
  bool get isBlank {
    return this == null || this!.isEmpty;
  }
}

extension DarkModeCheckExt on BuildContext {
  bool get isDarkMode {
    final themeMode = AdaptiveTheme.of(this).mode;

    final isThemeModeDark = themeMode == AdaptiveThemeMode.dark;
    final systemThemeMode = themeMode == AdaptiveThemeMode.system;
    final isSystemModeDark =
        MediaQuery.of(this).platformBrightness == Brightness.dark;

    return isThemeModeDark || (systemThemeMode && isSystemModeDark);
  }
}

extension HideSnackBarExt on BuildContext {
  void hideSnackBar({bool delayNeeded = true}) {
    if (delayNeeded) {
      Future.delayed(Duration.zero).then((value) {
        ScaffoldMessenger.of(this).removeCurrentSnackBar();
      });
    } else {
      ScaffoldMessenger.of(this).removeCurrentSnackBar();
    }
  }
}

extension ShowSnackBarExt on String? {
  void showSnackBar(BuildContext context, {int durationInSec = 3}) {
    Future.delayed(Duration.zero).then((value) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();

      final snackBar = SnackBar(
        content: Text(
          this ?? LocaleKeys.somethingWentWrong.tr(),
          style: const TextStyle(
            fontFamily: defaultFont,
            fontSize: 14.5,
          ),
        ),
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: durationInSec),
        action: SnackBarAction(
          label: LocaleKeys.dismiss.tr(),
          textColor: Colors.red,
          onPressed: () {},
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }
}

extension AsOptionsExt on RequestOptions {
  Options asOptions() {
    return Options(
      method: method,
      sendTimeout: sendTimeout,
      receiveTimeout: receiveTimeout,
      extra: extra,
      headers: headers,
      responseType: responseType,
      contentType: contentType,
      validateStatus: validateStatus,
      receiveDataWhenStatusError: receiveDataWhenStatusError,
      followRedirects: followRedirects,
      maxRedirects: maxRedirects,
      requestEncoder: requestEncoder,
      responseDecoder: responseDecoder,
      listFormat: listFormat,
    );
  }
}

extension ImageUrlCheckEx on String? {
  bool get isValidImageUrl {
    if (this != null) {
      for (final type in imageTypes) {
        if (this!.contains(type)) {
          return true;
        }
      }
    }

    return false;
  }
}

extension PaginationStateErrorEx on PaginationState {
  bool get isPaginatedError {
    return !error.isBlank && !isLoading && !isCreateUpdating;
  }
}

extension CheckNetworkErrorEx on String? {
  bool get isNetworkError {
    return this == LocaleKeys.internetConnectivityProblem.tr();
  }
}

extension FormattedDateTimestampExt on num? {
  String? formattedDateFromTimestamp({
    String format = "dd/MM/yyyy hh:mm a",
  }) {
    if (this == null || this! <= 0) return null;

    try {
      final dateTime =
          DateTime.fromMillisecondsSinceEpoch(this!.toInt() * 1000);
      return DateFormat(format).format(dateTime);
    } catch (_) {
      return null;
    }
  }
}

extension GetExceptionExt on Object {
  APIResponse handleApiException() {
    final e = this;
    if (e is DioError) {
      if (e.error is SocketException ||
          e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.receiveTimeout ||
          e.type == DioErrorType.sendTimeout) {
        return APIResponse.error(LocaleKeys.checkInternetConnectionFirst.tr());
      }

      return APIResponse.error(e.getDioErrorResponse());
    } else if (e is FormatException) {
      return APIResponse.error(LocaleKeys.apiFormatException.tr());
    } else {
      return APIResponse.error(e.toString());
    }
  }
}

extension GetApiResponseExt on Response<dynamic> {
  APIResponse handleApiResponse(bool checkStatusCodeOnly) {
    var responseData = data;

    if (responseData is Map<String, dynamic> || responseData is List) {
      if (checkStatusCodeOnly) {
        return APIResponse.success(responseData);
      } else {
        if (responseData['success'] == true) {
          return APIResponse.success(responseData);
        } else {
          return APIResponse.error(responseData['message']);
        }
      }
    } else {
      if (responseData != null && responseData != "") {
        String errorText = LocaleKeys.somethingWentWrong.tr();
        var errors = "$data".split("\n");

        for (int i = 0; i < errors.length; i++) {
          if (i < 12) errorText += errors[i];
        }

        return APIResponse.error(errorText);
      } else {
        return APIResponse.error(
            statusMessage ?? LocaleKeys.somethingWentWrong.tr());
      }
    }
  }
}

extension GetDioErrorExt on DioError {
  String getDioErrorResponse() {
    final DioError e = this;
    final response = e.response;
    final statusCode = response?.statusCode;

    if (response?.data != null) {
      try {
        if (statusCode != null && statusCode == 401 ||
            statusCode == 403 ||
            statusCode == 404 ||
            statusCode! >= 500) {
          if (statusCode! >= 500) {
            return "${LocaleKeys.internalServerError.tr()}: $statusCode";
          } else {
            ErrorResponse errorResponse =
                ErrorResponse.fromJson(response?.data);
            final message = errorResponse.message;
            final error = errorResponse.error;

            var errorMessage =
                message != null && message.isNotEmpty ? message : error;

            if (statusCode == 404 && error != null && error.isNotEmpty) {
              errorMessage = "$statusCode $error : ${errorResponse.path}";
            }

            return errorMessage ?? LocaleKeys.somethingWentWrong.tr();
          }
        } else {
          CommonResponse commonResponse =
              CommonResponse.fromJson(response?.data);
          return commonResponse.message ?? LocaleKeys.somethingWentWrong.tr();
        }
      } catch (e) {
        return e.toString();
      }
    } else {
      return e.message;
    }
  }
}

extension GetDioLoggerExt on Dio {
  void get dioLogger {
    if (kDebugMode) {
      interceptors.add(
        PrettyDioLogger(
            error: true,
            request: true,
            requestBody: true,
            responseBody: true,
            requestHeader: true,
            logPrint: (object) {
              log(object.toString());
            }),
      );

      // interceptors.add(
      //   LogInterceptor(
      //     error: false,
      //     request: false,
      //     requestBody: false,
      //     responseBody: true,
      //     requestHeader: false,
      //     logPrint: (object) {
      //       log(object.toString());
      //     },
      //   ),
      // );
    }
  }
}

extension InternetConnectedCheckExt on WidgetRef {
  Future<bool> isInternetConnected(BuildContext context,
      {bool isShowAlert = false}) async {
    bool isConnected = false;
    String message = LocaleKeys.internetConnectivityProblem.tr();

    try {
      var connectivityResult =
          await read(connectivityProvider).checkConnectivity();

      if (connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi) {
        isConnected = true;
      }
    } catch (e) {
      message += ": ${e.toString()}";
    }

    if (isShowAlert && !isConnected) {
      message.showSnackBar(context);
    }

    return isConnected;
  }
}

extension ImagePickerExt on void {
  Future<String?> pickOrGetImage(
    BuildContext context,
    ImageSource imageSource, {
    bool cropRequired = true,
    bool isPopNavigation = true,
    CropAspectRatioPreset cropAspectRatio = CropAspectRatioPreset.square,
  }) async {
    try {
      if (isPopNavigation) Navigator.pop(context);
      late final PermissionStatus request;

      if (imageSource == ImageSource.camera) {
        request = await Permission.camera.request();
      } else {
        request = await Permission.storage.request();
      }

      if (request.isDenied) return null;

      if (request.isPermanentlyDenied) {
        openAppSettings();
        return null;
      }

      if (request.isRestricted) {
        LocaleKeys.osRestrictPermission.tr().showSnackBar(context);
        return null;
      }

      final captureFile = await ImagePicker().pickImage(
        source: imageSource,
      );
      final String? path = captureFile?.path;
      if (path.isBlank) return null;

      if (path != null && cropRequired) {
        if (!path.isValidImageUrl) {
          "Invalid image extension. Please try to use ${imageTypes.toString()} this kind of image"
              .showSnackBar(context, durationInSec: 7);
          return null;
        }

        File? croppedFile = await ImageCropper().cropImage(
          sourcePath: path,
          compressQuality: 30,
          androidUiSettings: AndroidUiSettings(
            toolbarTitle: LocaleKeys.selectTheCroppingArea.tr(),
            toolbarColor: colorPrimary,
            toolbarWidgetColor: colorWhite,
            cropFrameColor: Colors.orange,
            initAspectRatio: cropAspectRatio,
            cropFrameStrokeWidth: 3,
            cropGridRowCount: 0,
            cropGridColumnCount: 0,
            lockAspectRatio: false,
          ),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 1.0,
          ),
        );

        return croppedFile?.path;
      } else {
        return path;
      }
    } on PlatformException catch (e) {
      "${e.message}".showSnackBar(context);
    } catch (e) {
      "${e.toString()}".showSnackBar(context);
    }

    return null;
  }
}

extension FilePickerExt on void {
  Future<List<String?>> pickFile(
    BuildContext context, {
    bool allowMultiple = false,
    bool isPopNavigation = true,
    bool cropRequired = true,
    CropAspectRatioPreset cropAspectRatio = CropAspectRatioPreset.square,
  }) async {
    try {
      if (isPopNavigation) Navigator.pop(context);

      final request = await Permission.storage.request();
      if (request.isDenied) return [];

      if (request.isPermanentlyDenied) {
        openAppSettings();
        return [];
      }

      if (request.isRestricted) {
        LocaleKeys.osRestrictPermission.tr().showSnackBar(context);
        return [];
      }

      FilePickerResult? result = await FilePicker.platform.pickFiles(
        allowMultiple: allowMultiple,
      );

      if (result == null) return [];
      final paths = result.paths;

      if (!allowMultiple &&
          cropRequired &&
          paths.length == 1 &&
          !paths.first.isBlank &&
          paths.first!.isValidImageUrl) {
        File? croppedFile = await ImageCropper().cropImage(
          sourcePath: paths.first!,
          compressQuality: 30,
          androidUiSettings: AndroidUiSettings(
            toolbarTitle: LocaleKeys.selectTheCroppingArea.tr(),
            toolbarColor: colorPrimary,
            toolbarWidgetColor: colorWhite,
            cropFrameColor: Colors.orange,
            initAspectRatio: cropAspectRatio,
            cropFrameStrokeWidth: 3,
            cropGridRowCount: 0,
            cropGridColumnCount: 0,
            lockAspectRatio: false,
          ),
          iosUiSettings: const IOSUiSettings(
            minimumAspectRatio: 1.0,
          ),
        );

        return croppedFile?.path.isBlank ? [] : [croppedFile!.path];
      }

      return paths;
    } on PlatformException catch (e) {
      "${e.message}".showSnackBar(context);
    } catch (e) {
      "${e.toString()}".showSnackBar(context);
    }

    return [];
  }
}
