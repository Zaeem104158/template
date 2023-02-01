import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/features/opportunity/model/contact/contact.dart';

part 'opportunity.freezed.dart';
part 'opportunity.g.dart';

@freezed
class Opportunity with _$Opportunity {
  const factory Opportunity({
    required final int id,
    final Contact? contact,
    final User? assignedAgent,
    final String? creationDate,
    final String? insuranceName,
    final int? insuranceTypeId,
    @Default("") final String status,
    final String? opportunityCreatedBy,
    @Default(0) double creationDateTimeStamp,
  }) = _Opportunity;

  factory Opportunity.fromJson(Map<String, dynamic> json) =>
      _$OpportunityFromJson(json);
}

List<Opportunity> convertToOpportunityData(List<dynamic> datas) {
  return datas.map((e) => e as Opportunity).toList();
}
