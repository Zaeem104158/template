// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      id: json['id'] as int?,
      agent: json['agent'] == null
          ? null
          : User.fromJson(json['agent'] as Map<String, dynamic>),
      status: json['status'] as String?,
      phone: json['phone'] as String?,
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      contactType: json['contactType'] as String?,
      premium: (json['premium'] as num?)?.toDouble() ?? 0,
      policyCount: json['policyCount'] as int? ?? 0,
      opportunityCount: (json['opportunityCount'] as num?)?.toDouble() ?? 0,
      upcomingRenewalCount:
          (json['upcomingRenewalCount'] as num?)?.toDouble() ?? 0,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'agent': instance.agent,
      'status': instance.status,
      'phone': instance.phone,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'contactType': instance.contactType,
      'premium': instance.premium,
      'policyCount': instance.policyCount,
      'opportunityCount': instance.opportunityCount,
      'upcomingRenewalCount': instance.upcomingRenewalCount,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
