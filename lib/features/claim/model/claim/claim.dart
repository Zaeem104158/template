import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';

part 'claim.freezed.dart';
part 'claim.g.dart';

@freezed
class Claim with _$Claim {
  const factory Claim({
    @Default(0) final int id,
    final int? productId,
    final int? policyId,
    final int? contactId,
    final int? carrierId,
    final int? agencyId,
    final String? agencyName,
    final String? productName,
    final String? carrierName,
    final String? policyNumber,
    final String? claimCreatedBy,
    @Default([]) List<DbFile> photos,
    final String? incidentDescription,
    @Default(0) final double dateOfAccident,
    @Default(0) final int creationDateTimeStamp,
  }) = _Claim;

  factory Claim.fromJson(Map<String, dynamic> json) => _$ClaimFromJson(json);
}

List<Claim> convertToClaimData(List<dynamic> datas) {
  return datas.map((e) => e as Claim).toList();
}
