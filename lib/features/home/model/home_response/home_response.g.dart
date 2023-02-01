// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeApiResponse _$$_HomeApiResponseFromJson(Map<String, dynamic> json) =>
    _$_HomeApiResponse(
      productPaginatedResponse: json['productPaginatedResponse'] == null
          ? null
          : ProductPaginatedResponse.fromJson(
              json['productPaginatedResponse'] as Map<String, dynamic>),
      productListResponse: json['productListResponse'] == null
          ? null
          : ProductListResponse.fromJson(
              json['productListResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_HomeApiResponseToJson(_$_HomeApiResponse instance) =>
    <String, dynamic>{
      'productPaginatedResponse': instance.productPaginatedResponse,
      'productListResponse': instance.productListResponse,
    };
