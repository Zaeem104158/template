// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationResponse _$$_NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload:
          NotificationPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationResponseToJson(
        _$_NotificationResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_NotificationPayload _$$_NotificationPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationPayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => NotificationData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_NotificationPayloadToJson(
        _$_NotificationPayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
