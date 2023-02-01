// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Certificate _$$_CertificateFromJson(Map<String, dynamic> json) =>
    _$_Certificate(
      id: json['id'] as int,
      certificateStatus: json['certificateStatus'] as String?,
      policyId: json['policyId'] as int?,
      policy: json['policy'] == null
          ? null
          : Policy.fromJson(json['policy'] as Map<String, dynamic>),
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_CertificateToJson(_$_Certificate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'certificateStatus': instance.certificateStatus,
      'policyId': instance.policyId,
      'policy': instance.policy,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
