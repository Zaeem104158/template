// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Policy _$$_PolicyFromJson(Map<String, dynamic> json) => _$_Policy(
      id: json['id'] as int,
      source: json['source'] as String?,
      policyType: json['policyType'] as String?,
      policyTerm: json['policyTerm'] as String?,
      carrierName: json['carrierName'] as String?,
      policyNumber: json['policyNumber'] as String?,
      premium: (json['premium'] as num?)?.toDouble() ?? 0,
      importedAgent: json['importedAgent'] as String?,
      insuranceName: json['insuranceName'] as String?,
      expiredDate: (json['expiredDate'] as num?)?.toDouble() ?? 0,
      effectiveDate: (json['effectiveDate'] as num?)?.toDouble() ?? 0,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PolicyToJson(_$_Policy instance) => <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'policyType': instance.policyType,
      'policyTerm': instance.policyTerm,
      'carrierName': instance.carrierName,
      'policyNumber': instance.policyNumber,
      'premium': instance.premium,
      'importedAgent': instance.importedAgent,
      'insuranceName': instance.insuranceName,
      'expiredDate': instance.expiredDate,
      'effectiveDate': instance.effectiveDate,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
