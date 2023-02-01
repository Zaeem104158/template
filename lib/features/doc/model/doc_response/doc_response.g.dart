// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocResponse _$$_DocResponseFromJson(Map<String, dynamic> json) =>
    _$_DocResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: DocPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DocResponseToJson(_$_DocResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_DocPayload _$$_DocPayloadFromJson(Map<String, dynamic> json) =>
    _$_DocPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Doc.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_DocPayloadToJson(_$_DocPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
