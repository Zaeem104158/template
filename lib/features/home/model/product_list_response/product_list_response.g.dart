// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductListResponse _$$_ProductListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProductListResponse(
      success: json['success'],
      status: json['status'] as String?,
      message: json['message'] as String?,
      payload: (json['payload'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductListResponseToJson(
        _$_ProductListResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'payload': instance.payload,
    };
