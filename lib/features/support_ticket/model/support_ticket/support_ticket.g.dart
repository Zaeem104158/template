// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportTicket _$$_SupportTicketFromJson(Map<String, dynamic> json) =>
    _$_SupportTicket(
      id: json['id'] as int,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
      appId: json['appId'] as String?,
      description: json['description'] as String?,
      ticketStatus: json['ticketStatus'] as String?,
      creationDate: (json['creationDate'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_SupportTicketToJson(_$_SupportTicket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'appId': instance.appId,
      'description': instance.description,
      'ticketStatus': instance.ticketStatus,
      'creationDate': instance.creationDate,
    };
