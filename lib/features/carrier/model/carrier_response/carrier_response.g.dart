// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrier_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarrierResponse _$$_CarrierResponseFromJson(Map<String, dynamic> json) =>
    _$_CarrierResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: CarrierPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CarrierResponseToJson(_$_CarrierResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_CarrierPayload _$$_CarrierPayloadFromJson(Map<String, dynamic> json) =>
    _$_CarrierPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Carrier.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_CarrierPayloadToJson(_$_CarrierPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
