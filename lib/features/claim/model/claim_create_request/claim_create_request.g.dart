// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_create_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClaimCreateRequest _$$_ClaimCreateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ClaimCreateRequest(
      carrierId: json['carrierId'] as String?,
      productId: json['productId'] as String?,
      productName: json['productName'] as String?,
      policyNumber: json['policyNumber'] as String?,
      dateOfAccident: json['dateOfAccident'] as String?,
      claimCreatedBy: json['claimCreatedBy'] as String?,
      incidentDescription: json['incidentDescription'] as String?,
      dbfileIds: (json['dbfileIds'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ClaimCreateRequestToJson(
        _$_ClaimCreateRequest instance) =>
    <String, dynamic>{
      'carrierId': instance.carrierId,
      'productId': instance.productId,
      'productName': instance.productName,
      'policyNumber': instance.policyNumber,
      'dateOfAccident': instance.dateOfAccident,
      'claimCreatedBy': instance.claimCreatedBy,
      'incidentDescription': instance.incidentDescription,
      'dbfileIds': instance.dbfileIds,
    };
