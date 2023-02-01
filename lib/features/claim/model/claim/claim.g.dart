// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Claim _$$_ClaimFromJson(Map<String, dynamic> json) => _$_Claim(
      id: json['id'] as int? ?? 0,
      productId: json['productId'] as int?,
      policyId: json['policyId'] as int?,
      contactId: json['contactId'] as int?,
      carrierId: json['carrierId'] as int?,
      agencyId: json['agencyId'] as int?,
      agencyName: json['agencyName'] as String?,
      productName: json['productName'] as String?,
      carrierName: json['carrierName'] as String?,
      policyNumber: json['policyNumber'] as String?,
      claimCreatedBy: json['claimCreatedBy'] as String?,
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => DbFile.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      incidentDescription: json['incidentDescription'] as String?,
      dateOfAccident: (json['dateOfAccident'] as num?)?.toDouble() ?? 0,
      creationDateTimeStamp: json['creationDateTimeStamp'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ClaimToJson(_$_Claim instance) => <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'policyId': instance.policyId,
      'contactId': instance.contactId,
      'carrierId': instance.carrierId,
      'agencyId': instance.agencyId,
      'agencyName': instance.agencyName,
      'productName': instance.productName,
      'carrierName': instance.carrierName,
      'policyNumber': instance.policyNumber,
      'claimCreatedBy': instance.claimCreatedBy,
      'photos': instance.photos,
      'incidentDescription': instance.incidentDescription,
      'dateOfAccident': instance.dateOfAccident,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
