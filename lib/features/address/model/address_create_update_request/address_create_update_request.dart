import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_create_update_request.freezed.dart';
part 'address_create_update_request.g.dart';

@freezed
class AddressCreateUpdateRequest with _$AddressCreateUpdateRequest {
  const factory AddressCreateUpdateRequest({
    final int? addressId,
    final String? city,
    final String? state,
    final String? street,
    final String? zipCode,
    final String? addressType,
  }) = _AddressCreateUpdateRequest;

  factory AddressCreateUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$AddressCreateUpdateRequestFromJson(json);
}
