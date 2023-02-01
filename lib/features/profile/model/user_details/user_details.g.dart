// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetails _$$_UserDetailsFromJson(Map<String, dynamic> json) =>
    _$_UserDetails(
      id: json['id'] as int,
      userId: json['userId'] as int,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String? ?? "",
      website: json['website'] as String? ?? "",
      businessEmail: json['businessEmail'] as String? ?? "",
    );

Map<String, dynamic> _$$_UserDetailsToJson(_$_UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'businessEmail': instance.businessEmail,
    };
