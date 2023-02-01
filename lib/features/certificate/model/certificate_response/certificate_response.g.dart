// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CertificateResponse _$$_CertificateResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CertificateResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload:
          CertificatePayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CertificateResponseToJson(
        _$_CertificateResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };

_$_CertificatePayload _$$_CertificatePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CertificatePayload(
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => Certificate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['totalPages'] as int,
      totalElements: json['totalElements'] as int,
      numberOfElements: json['numberOfElements'] as int,
      last: json['last'] as bool,
      first: json['first'] as bool,
      empty: json['empty'] as bool,
    );

Map<String, dynamic> _$$_CertificatePayloadToJson(
        _$_CertificatePayload instance) =>
    <String, dynamic>{
      'content': instance.content,
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'numberOfElements': instance.numberOfElements,
      'last': instance.last,
      'first': instance.first,
      'empty': instance.empty,
    };
