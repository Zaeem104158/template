// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportTicketMessageResponse _$$_SupportTicketMessageResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SupportTicketMessageResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: SupportTicketMesagePayload.fromJson(
          json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SupportTicketMessageResponseToJson(
        _$_SupportTicketMessageResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_SupportTicketMesagePayload _$$_SupportTicketMesagePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_SupportTicketMesagePayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) =>
                  SupportTicketMessage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_SupportTicketMesagePayloadToJson(
        _$_SupportTicketMesagePayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
