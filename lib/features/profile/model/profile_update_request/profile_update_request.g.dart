// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUpdateRequest _$$_ProfileUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateRequest(
      addressId: json['addressId'] as int?,
      businessEmail: json['businessEmail'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$$_ProfileUpdateRequestToJson(
        _$_ProfileUpdateRequest instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'businessEmail': instance.businessEmail,
      'name': instance.name,
      'phone': instance.phone,
      'website': instance.website,
    };
