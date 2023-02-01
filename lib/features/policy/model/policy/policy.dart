import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy.freezed.dart';
part 'policy.g.dart';

@freezed
class Policy with _$Policy {
  const factory Policy({
    required final int id,
    final String? source,
    final String? policyType,
    final String? policyTerm,
    final String? carrierName,
    final String? policyNumber,
    @Default(0) double premium,
    final String? importedAgent,
    final String? insuranceName,
    @Default(0) final double expiredDate,
    @Default(0) final double effectiveDate,
    @Default(0) final double creationDateTimeStamp,
  }) = _Policy;

  factory Policy.fromJson(Map<String, dynamic> json) => _$PolicyFromJson(json);
}

List<Policy> convertToPolicyData(List<dynamic> datas) {
  return datas.map((e) => e as Policy).toList();
}
