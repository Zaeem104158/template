// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_message_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportTicketMessageCreateRequest
    _$$_SupportTicketMessageCreateRequestFromJson(Map<String, dynamic> json) =>
        _$_SupportTicketMessageCreateRequest(
          name: json['name'] as String?,
          type: json['type'] as String?,
          email: json['email'] as String?,
          text: json['text'] as String?,
          ticketId: json['ticketId'] as int?,
          fileIds: (json['fileIds'] as List<dynamic>?)
                  ?.map((e) => e as int)
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$_SupportTicketMessageCreateRequestToJson(
        _$_SupportTicketMessageCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'email': instance.email,
      'text': instance.text,
      'ticketId': instance.ticketId,
      'fileIds': instance.fileIds,
    };
