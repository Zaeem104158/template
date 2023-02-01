import 'package:freezed_annotation/freezed_annotation.dart';

part 'claim_create_request.freezed.dart';
part 'claim_create_request.g.dart';

@freezed
class ClaimCreateRequest with _$ClaimCreateRequest {
  const factory ClaimCreateRequest({
    final String? carrierId,
    final String? productId,
    final String? productName,
    final String? policyNumber,
    final String? dateOfAccident,
    final String? claimCreatedBy,
    final String? incidentDescription,
    @Default([]) List<int> dbfileIds,
  }) = _ClaimCreateRequest;

  factory ClaimCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$ClaimCreateRequestFromJson(json);
}
