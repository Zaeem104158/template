import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';

part 'certificate.freezed.dart';
part 'certificate.g.dart';

@freezed
class Certificate with _$Certificate {
  const factory Certificate({
    required final int id,
    final String? certificateStatus,
    final int? policyId,
    final Policy? policy,
    @Default(0) final double creationDateTimeStamp,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) => _$CertificateFromJson(json);
}

List<Certificate> convertToCertificateData(List<dynamic> datas) {
  return datas.map((e) => e as Certificate).toList();
}
