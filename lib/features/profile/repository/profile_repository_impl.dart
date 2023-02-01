import 'package:dio/dio.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';
import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/profile/model/password_update_request/password_update_request.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_update_request/profile_update_request.dart';
import 'package:thrive_mobile_app/features/profile/state/update_password_state.dart';
import 'profile_repository.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_response/profile_response.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ApiClient _apiClient;
  final CommonRepository _commonRepository;

  const ProfileRepositoryImpl(
    this._apiClient,
    this._commonRepository,
  );

  @override
  Future<ProfileResponse> profileInfo() async {
    final response = await _apiClient.getRequest("/auth/me");

    return response.when(success: (success) {
      return ProfileResponse.fromJson(success);
    }, error: (error) {
      return ProfileResponse(
        success: false,
        message: error,
      );
    });
  }

  @override
  Future<CommonResponse> uplaodProfileImage(String filePath) async {
    final dbFileResponse = await _commonRepository.uploadFile(
      apiPath: "/file/upload",
      filePath: filePath,
      formDataName: "file",
      query: {
        "fileUploadType": FileUploadType.USER_IMAGE.name,
        "fileType": "",
      },
    );

    if (dbFileResponse.success == true) {
      final dbFile = DbFile.fromJson(dbFileResponse.payload);

      final response = await _apiClient.putRequest(
        "/auth/profile-picture/update",
        {"dbfileId": dbFile.id},
      );

      return response.when(success: (success) {
        return CommonResponse.fromJson(success);
      }, error: (error) {
        return CommonResponse(
          success: false,
          message: error,
        );
      });
    } else {
      return CommonResponse(
        success: false,
        message: dbFileResponse.message,
      );
    }
  }

  @override
  Future<ProfileResponse> updateProfileInfo(
    ProfileUpdateRequest request, {
    CancelToken? cancelToken,
  }) async {
    final response = await _apiClient.putRequest(
      "/auth/profile/update",
      request.toJson(),
    );

    return response.when(success: (success) {
      return ProfileResponse.fromJson(success);
    }, error: (error) {
      return ProfileResponse(
        success: false,
        message: error,
      );
    });
  }

  @override
  Future<UpdatePasswordState> updatePassword(
    PasswordUpdateRequest request, {
    CancelToken? cancelToken,
  }) async {
    final response = await _apiClient.postRequest(
      "/auth/changepassword",
      request.toJson(),
    );

    return response.when(success: (success) {
      return UpdatePasswordState.data(CommonResponse.fromJson(success));
    }, error: (error) {
      return UpdatePasswordState.error(error);
    });
  }
}
