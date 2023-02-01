// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terms_privacy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TermsPrivacyResponse _$$_TermsPrivacyResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TermsPrivacyResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: json['payload'] == null
          ? null
          : TermsPrivacyPayload.fromJson(
              json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TermsPrivacyResponseToJson(
        _$_TermsPrivacyResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_TermsPrivacyPayload _$$_TermsPrivacyPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_TermsPrivacyPayload(
      id: json['id'] as int,
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      description: json['description'] as String?,
      tag: json['tag'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$_TermsPrivacyPayloadToJson(
        _$_TermsPrivacyPayload instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'description': instance.description,
      'tag': instance.tag,
      'slug': instance.slug,
    };
