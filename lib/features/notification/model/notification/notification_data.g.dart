// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationData _$$_NotificationDataFromJson(Map<String, dynamic> json) =>
    _$_NotificationData(
      id: json['id'] as int,
      recipient: json['recipient'] == null
          ? null
          : User.fromJson(json['recipient'] as Map<String, dynamic>),
      message: json['message'] as String? ?? "",
      type: json['type'] as String? ?? "",
      typeId: json['typeId'] as int?,
      read: json['read'] as bool?,
      sender: json['sender'] == null
          ? null
          : User.fromJson(json['sender'] as Map<String, dynamic>),
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_NotificationDataToJson(_$_NotificationData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipient': instance.recipient,
      'message': instance.message,
      'type': instance.type,
      'typeId': instance.typeId,
      'read': instance.read,
      'sender': instance.sender,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
