import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'package:thrive_mobile_app/app/values/constants.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class CommonRepositoryImpl implements CommonRepository {
  final ApiClient _apiClient;

  CommonRepositoryImpl(this._apiClient);

  @override
  Future<CommonResponse> uploadFile({
    required String apiPath,
    required String filePath,
    String? formDataName,
    Map<String, dynamic>? query,
  }) async {
    try {
      File file = File(filePath);
      String? fileName = file.path.split('/').last;

      FormData formData = FormData.fromMap({
        "$formDataName": await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
      });

      var response = await _apiClient.postRequest(
        apiPath,
        formData,
        query: query,
      );

      return response.when(success: (success) {
        return CommonResponse.fromJson(success);
      }, error: (error) {
        return CommonResponse(
          success: false,
          message: error,
        );
      });
    } catch (e) {
      return CommonResponse(
        success: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<void> saveUserLocally(
    User user,
    Reader reader,
    PreferenceManager preferenceManager,
  ) async {
    try {
      await preferenceManager.setInt(keyUserId, user.id);
      await preferenceManager.setString(keyUserName, user.name);
      await preferenceManager.setString(keyUserEmail, user.email);

      final fileUrl = user.photo?.fileUrl;
      if (!fileUrl.isBlank) {
        await preferenceManager.setString(keyUserImageUrl, fileUrl!);
      }

      reader(loggedInUserSateProvider.notifier).state = user;
    } catch (_) {}
  }
}
