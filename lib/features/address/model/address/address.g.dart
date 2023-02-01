// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as int,
      city: json['city'] as String?,
      state: json['state'] as String?,
      street: json['street'] as String?,
      zipCode: json['zipCode'] as String?,
      addressType: json['addressType'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'state': instance.state,
      'street': instance.street,
      'zipCode': instance.zipCode,
      'addressType': instance.addressType,
    };
