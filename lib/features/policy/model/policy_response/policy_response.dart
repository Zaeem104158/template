import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';

part 'policy_response.freezed.dart';
part 'policy_response.g.dart';

@freezed
class PolicyResponse with _$PolicyResponse {
  const factory PolicyResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final PolicyPayload payload,
  }) = _PolicyResponse;

  factory PolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$PolicyResponseFromJson(json);
}

@freezed
class PolicyPayload with _$PolicyPayload {
  const factory PolicyPayload({
    @Default([]) List<Policy> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _PolicyPayload;

  factory PolicyPayload.fromJson(Map<String, dynamic> json) =>
      _$PolicyPayloadFromJson(json);
}
