// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClaimResponse _$$_ClaimResponseFromJson(Map<String, dynamic> json) =>
    _$_ClaimResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
      payload: ClaimPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClaimResponseToJson(_$_ClaimResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'isLoading': instance.isLoading,
      'payload': instance.payload,
    };

_$_ClaimPayload _$$_ClaimPayloadFromJson(Map<String, dynamic> json) =>
    _$_ClaimPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Claim.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_ClaimPayloadToJson(_$_ClaimPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
