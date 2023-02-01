// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Carrier _$$_CarrierFromJson(Map<String, dynamic> json) => _$_Carrier(
      id: json['id'] as int,
      name: json['name'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_CarrierToJson(_$_Carrier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'websiteUrl': instance.websiteUrl,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
