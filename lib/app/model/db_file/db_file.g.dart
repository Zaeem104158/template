// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DbFile _$$_DbFileFromJson(Map<String, dynamic> json) => _$_DbFile(
      id: json['id'] as int,
      fileExtension: json['fileExtension'] as String?,
      fileName: json['fileName'] as String?,
      fileType: json['fileType'] as String?,
      fileUrl: json['fileUrl'] as String? ?? "",
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_DbFileToJson(_$_DbFile instance) => <String, dynamic>{
      'id': instance.id,
      'fileExtension': instance.fileExtension,
      'fileName': instance.fileName,
      'fileType': instance.fileType,
      'fileUrl': instance.fileUrl,
      'message': instance.message,
    };
