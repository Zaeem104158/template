// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quote _$$_QuoteFromJson(Map<String, dynamic> json) => _$_Quote(
      id: json['id'] as int,
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
      carrier: json['carrier'] == null
          ? null
          : Carrier.fromJson(json['carrier'] as Map<String, dynamic>),
      assignedAgent: json['assignedAgent'] == null
          ? null
          : User.fromJson(json['assignedAgent'] as Map<String, dynamic>),
      creationDate: json['creationDate'] as String?,
      effectiveDate: (json['effectiveDate'] as num?)?.toDouble() ?? 0,
      quoteStatus: json['quoteStatus'] as String? ?? "",
      premiumAmount: (json['premiumAmount'] as num?)?.toDouble() ?? 0,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_QuoteToJson(_$_Quote instance) => <String, dynamic>{
      'id': instance.id,
      'contact': instance.contact,
      'carrier': instance.carrier,
      'assignedAgent': instance.assignedAgent,
      'creationDate': instance.creationDate,
      'effectiveDate': instance.effectiveDate,
      'quoteStatus': instance.quoteStatus,
      'premiumAmount': instance.premiumAmount,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
    };
