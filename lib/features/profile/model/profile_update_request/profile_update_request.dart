import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_update_request.freezed.dart';
part 'profile_update_request.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  const factory ProfileUpdateRequest({
    final int? addressId,
    final String? businessEmail,
    final String? name,
    final String? phone,
    final String? website,
  }) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
