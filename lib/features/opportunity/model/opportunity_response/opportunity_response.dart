import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/opportunity/model/opportunity/opportunity.dart';

part 'opportunity_response.g.dart';
part 'opportunity_response.freezed.dart';

@freezed
class OpportunityResponse with _$OpportunityResponse {
  const factory OpportunityResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final OpportunityPayload payload,
  }) = _OpportunityResponse;

  factory OpportunityResponse.fromJson(Map<String, dynamic> json) =>
      _$OpportunityResponseFromJson(json);
}

@freezed
class OpportunityPayload with _$OpportunityPayload {
  const factory OpportunityPayload({
    @Default([]) List<Opportunity> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _OpportunityPayload;

  factory OpportunityPayload.fromJson(Map<String, dynamic> json) =>
      _$OpportunityPayloadFromJson(json);
}
