// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_ticket_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SupportTicketCreateRequest _$$_SupportTicketCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SupportTicketCreateRequest(
      name: json['name'] as String?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      userEmail: json['userEmail'] as String?,
    );

Map<String, dynamic> _$$_SupportTicketCreateRequestToJson(
        _$_SupportTicketCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'desc': instance.desc,
      'description': instance.description,
      'type': instance.type,
      'userEmail': instance.userEmail,
    };
