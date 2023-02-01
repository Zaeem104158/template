import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_update_request.freezed.dart';
part 'password_update_request.g.dart';

@freezed
class PasswordUpdateRequest with _$PasswordUpdateRequest {
  const factory PasswordUpdateRequest({
    final String? email,
    final String? newPassword,
    final String? previousPassword,
  }) = _PasswordUpdateRequest;

  factory PasswordUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$PasswordUpdateRequestFromJson(json);
}
