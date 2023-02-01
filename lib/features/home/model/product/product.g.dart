// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as int,
      creationDate: json['creationDate'] as String?,
      name: json['name'] as String? ?? "",
      tag: json['tag'] as String?,
      longDescription: json['longDescription'] as String?,
      shortDescription: json['shortDescription'] as String?,
      image: json['image'] == null
          ? null
          : DbFile.fromJson(json['image'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : DbFile.fromJson(json['icon'] as Map<String, dynamic>),
      active: json['active'] as bool?,
      creationDateTimeStamp:
          (json['creationDateTimeStamp'] as num?)?.toDouble() ?? 0,
      isRecommended: json['isRecommended'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'name': instance.name,
      'tag': instance.tag,
      'longDescription': instance.longDescription,
      'shortDescription': instance.shortDescription,
      'image': instance.image,
      'icon': instance.icon,
      'active': instance.active,
      'creationDateTimeStamp': instance.creationDateTimeStamp,
      'isRecommended': instance.isRecommended,
    };
