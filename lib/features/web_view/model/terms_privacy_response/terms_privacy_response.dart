import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_privacy_response.freezed.dart';
part 'terms_privacy_response.g.dart';

@freezed
class TermsPrivacyResponse with _$TermsPrivacyResponse {
  const factory TermsPrivacyResponse({
    dynamic success,
    final String? status,
    final String? message,
    final TermsPrivacyPayload? payload,
  }) = _TermsPrivacyResponse;

  factory TermsPrivacyResponse.fromJson(Map<String, dynamic> json) =>
      _$TermsPrivacyResponseFromJson(json);
}

@freezed
class TermsPrivacyPayload with _$TermsPrivacyPayload {
  const factory TermsPrivacyPayload({
    required final int id,
    final String? title,
    final String? subTitle,
    final String? description,
    final String? tag,
    final String? slug,
  }) = _TermsPrivacyPayload;

  factory TermsPrivacyPayload.fromJson(Map<String, dynamic> json) =>
      _$TermsPrivacyPayloadFromJson(json);
}
