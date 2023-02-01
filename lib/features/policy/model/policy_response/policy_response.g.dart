// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PolicyResponse _$$_PolicyResponseFromJson(Map<String, dynamic> json) =>
    _$_PolicyResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: PolicyPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PolicyResponseToJson(_$_PolicyResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_PolicyPayload _$$_PolicyPayloadFromJson(Map<String, dynamic> json) =>
    _$_PolicyPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Policy.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_PolicyPayloadToJson(_$_PolicyPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
