// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuoteResponse _$$_QuoteResponseFromJson(Map<String, dynamic> json) =>
    _$_QuoteResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: QuotePayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuoteResponseToJson(_$_QuoteResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_QuotePayload _$$_QuotePayloadFromJson(Map<String, dynamic> json) =>
    _$_QuotePayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Quote.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_QuotePayloadToJson(_$_QuotePayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
