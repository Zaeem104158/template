// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressResponse _$$_AddressResponseFromJson(Map<String, dynamic> json) =>
    _$_AddressResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : Address.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddressResponseToJson(_$_AddressResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };
