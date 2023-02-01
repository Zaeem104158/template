// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opportunity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Opportunity _$$_OpportunityFromJson(Map<String, dynamic> json) =>
    _$_Opportunity(
      id: json['id'] as int,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      assignedAgent: json['assignedAgent'] == null
          ? null
          : User.fromJson(json['assignedAgent'] as Map<String, dynamic>),
      creationDate: json['creationDate'] as String?,
      insuranceName: json['insuranceName'] as String?,
      insuranceTypeId: json['insuranceTypeId'] as int?,
      status: json['status'] as String? ?? "",
      opportunityCreatedBy: json['opportunityCreatedBy'] as String?,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_OpportunityToJson(_$_Opportunity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contact': instance.contact,
      'assignedAgent': instance.assignedAgent,
      'creationDate': instance.creationDate,
      'insuranceName': instance.insuranceName,
      'insuranceTypeId': instance.insuranceTypeId,
      'status': instance.status,
      'opportunityCreatedBy': instance.opportunityCreatedBy,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
