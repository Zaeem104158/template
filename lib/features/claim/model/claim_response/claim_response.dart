import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/claim/model/claim/claim.dart';

part 'claim_response.freezed.dart';
part 'claim_response.g.dart';

@freezed
class ClaimResponse with _$ClaimResponse {
  const factory ClaimResponse({
    dynamic success,
    final String? status,
    final String? message,
    @Default(false) bool isLoading,
    required final ClaimPayload payload,
  }) = _ClaimResponse;

  factory ClaimResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseFromJson(json);
}

@freezed
class ClaimPayload with _$ClaimPayload {
  const factory ClaimPayload({
    @Default([]) List<Claim> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _ClaimPayload;

  factory ClaimPayload.fromJson(Map<String, dynamic> json) =>
      _$ClaimPayloadFromJson(json);
}
