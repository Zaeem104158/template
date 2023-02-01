// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opportunity_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OpportunityResponse _$$_OpportunityResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OpportunityResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload:
          OpportunityPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OpportunityResponseToJson(
        _$_OpportunityResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_OpportunityPayload _$$_OpportunityPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_OpportunityPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Opportunity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_OpportunityPayloadToJson(
        _$_OpportunityPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
