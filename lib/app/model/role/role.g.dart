// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Role _$$_RoleFromJson(Map<String, dynamic> json) => _$_Role(
      id: json['id'] as int,
      roleType: json['roleType'] as String? ?? "",
      roleName: json['roleName'] as String?,
    );

Map<String, dynamic> _$$_RoleToJson(_$_Role instance) => <String, dynamic>{
      'id': instance.id,
      'roleType': instance.roleType,
      'roleName': instance.roleName,
    };
