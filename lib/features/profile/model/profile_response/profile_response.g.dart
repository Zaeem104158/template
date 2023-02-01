// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileResponse _$$_ProfileResponseFromJson(Map<String, dynamic> json) =>
    _$_ProfileResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      isLoading: json['isLoading'] as bool? ?? false,
      isImageUploading: json['isImageUploading'] as bool? ?? false,
      payload: json['payload'] == null
          ? null
          : ProfilePayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileResponseToJson(_$_ProfileResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'isLoading': instance.isLoading,
      'isImageUploading': instance.isImageUploading,
      'payload': instance.payload,
    };

_$_ProfilePayload _$$_ProfilePayloadFromJson(Map<String, dynamic> json) =>
    _$_ProfilePayload(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      userDetails: json['userDetails'] == null
          ? null
          : UserDetails.fromJson(json['userDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfilePayloadToJson(_$_ProfilePayload instance) =>
    <String, dynamic>{
      'user': instance.user,
      'userDetails': instance.userDetails,
    };
