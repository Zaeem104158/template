// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_create_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressCreateUpdateRequest _$$_AddressCreateUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_AddressCreateUpdateRequest(
      addressId: json['addressId'] as int?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      street: json['street'] as String?,
      zipCode: json['zipCode'] as String?,
      addressType: json['addressType'] as String?,
    );

Map<String, dynamic> _$$_AddressCreateUpdateRequestToJson(
        _$_AddressCreateUpdateRequest instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'city': instance.city,
      'state': instance.state,
      'street': instance.street,
      'zipCode': instance.zipCode,
      'addressType': instance.addressType,
    };
