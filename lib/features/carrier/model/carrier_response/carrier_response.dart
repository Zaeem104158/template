import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/carrier/model/carrier/carrier.dart';

part 'carrier_response.freezed.dart';
part 'carrier_response.g.dart';

@freezed
class CarrierResponse with _$CarrierResponse {
  const factory CarrierResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final CarrierPayload payload,
  }) = _CarrierResponse;

  factory CarrierResponse.fromJson(Map<String, dynamic> json) =>
      _$CarrierResponseFromJson(json);
}

@freezed
class CarrierPayload with _$CarrierPayload {
  const factory CarrierPayload({
    @Default([]) List<Carrier> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _CarrierPayload;

  factory CarrierPayload.fromJson(Map<String, dynamic> json) =>
      _$CarrierPayloadFromJson(json);
}
