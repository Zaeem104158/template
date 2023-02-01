// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportTicketMessage _$$_SupportTicketMessageFromJson(
        Map<String, dynamic> json) =>
    _$_SupportTicketMessage(
      id: json['id'] as int,
      text: json['text'] as String?,
      ticketId: json['ticketId'] as int?,
      messageFrom: json['messageFrom'] == null
          ? null
          : User.fromJson(json['messageFrom'] as Map<String, dynamic>),
      creationDate: (json['creationDate'] as num?)?.toDouble() ?? 0,
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => DbFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_SupportTicketMessageToJson(
        _$_SupportTicketMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'ticketId': instance.ticketId,
      'messageFrom': instance.messageFrom,
      'creationDate': instance.creationDate,
      'attachments': instance.attachments,
    };
