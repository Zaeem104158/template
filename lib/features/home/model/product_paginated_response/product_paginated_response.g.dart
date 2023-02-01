// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_paginated_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPaginatedResponse _$$_ProductPaginatedResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductPaginatedResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: ProductPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductPaginatedResponseToJson(
        _$_ProductPaginatedResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_ProductPayload _$$_ProductPayloadFromJson(Map<String, dynamic> json) =>
    _$_ProductPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_ProductPayloadToJson(_$_ProductPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
