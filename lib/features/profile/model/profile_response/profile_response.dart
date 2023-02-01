import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/features/profile/model/user_details/user_details.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    dynamic success,
    final String? status,
    final String? message,
    @Default(false) bool isLoading,
    @Default(false) bool isImageUploading,
    final ProfilePayload? payload,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class ProfilePayload with _$ProfilePayload {
  const factory ProfilePayload({
    required final User user,
    final UserDetails? userDetails,
  }) = _ProfilePayload;

  factory ProfilePayload.fromJson(Map<String, dynamic> json) =>
      _$ProfilePayloadFromJson(json);
}
