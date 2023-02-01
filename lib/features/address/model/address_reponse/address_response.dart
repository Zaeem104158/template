import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';

part 'address_response.freezed.dart';
part 'address_response.g.dart';

@freezed
class AddressResponse with _$AddressResponse {
  const factory AddressResponse({
    dynamic success,
    final String? status,
    final String? message,
    final Address? payload,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}

// @freezed
// class AddressPayload with _$AddressPayload {
//   const factory AddressPayload({
//     @Default([]) List<Address> content,
//     required final int totalPages,
//     required final int totalElements,
//     required final int numberOfElements,
//     required final bool last,
//     required final bool first,
//     required final bool empty,
//   }) = _AddressPayload;

//   factory AddressPayload.fromJson(Map<String, dynamic> json) =>
//       _$AddressPayloadFromJson(json);
// }
