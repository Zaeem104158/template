// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PasswordUpdateRequest _$$_PasswordUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PasswordUpdateRequest(
      email: json['email'] as String?,
      newPassword: json['newPassword'] as String?,
      previousPassword: json['previousPassword'] as String?,
    );

Map<String, dynamic> _$$_PasswordUpdateRequestToJson(
        _$_PasswordUpdateRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
      'previousPassword': instance.previousPassword,
    };
