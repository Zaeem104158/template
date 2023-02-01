import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/certificate/model/certificate/certificate.dart';

part 'certificate_response.freezed.dart';
part 'certificate_response.g.dart';

@freezed
class CertificateResponse with _$CertificateResponse {
  const factory CertificateResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final CertificatePayload payload,
  }) = _CertificateResponse;

  factory CertificateResponse.fromJson(Map<String, dynamic> json) =>
      _$CertificateResponseFromJson(json);
}

@freezed
class CertificatePayload with _$CertificatePayload {
  const factory CertificatePayload({
    @Default([]) List<Certificate> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _CertificatePayload;

  factory CertificatePayload.fromJson(Map<String, dynamic> json) =>
      _$CertificatePayloadFromJson(json);
}
