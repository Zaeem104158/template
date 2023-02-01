// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Doc _$$_DocFromJson(Map<String, dynamic> json) => _$_Doc(
      id: json['id'] as int,
      dbfileId: json['dbfileId'] as int?,
      typeId: json['typeId'] as int?,
      dbFile: json['dbFile'] == null
          ? null
          : DbFile.fromJson(json['dbFile'] as Map<String, dynamic>),
      docCreatedBy: json['docCreatedBy'] as String?,
      createdDocType: json['createdDocType'] as String?,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_DocToJson(_$_Doc instance) => <String, dynamic>{
      'id': instance.id,
      'dbfileId': instance.dbfileId,
      'typeId': instance.typeId,
      'dbFile': instance.dbFile,
      'docCreatedBy': instance.docCreatedBy,
      'createdDocType': instance.createdDocType,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
