import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_response/profile_response.dart';
import 'package:thrive_mobile_app/features/profile/model/profile_update_request/profile_update_request.dart';
import 'package:thrive_mobile_app/features/profile/model/password_update_request/password_update_request.dart';
import 'package:thrive_mobile_app/features/profile/state/update_password_state.dart';

abstract class ProfileRepository {
  Future<ProfileResponse> profileInfo();
  Future<CommonResponse> uplaodProfileImage(String filePath);
  Future<ProfileResponse> updateProfileInfo(ProfileUpdateRequest request);
  Future<UpdatePasswordState> updatePassword(PasswordUpdateRequest request);
}
