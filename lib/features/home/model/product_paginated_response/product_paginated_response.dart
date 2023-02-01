import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';

part 'product_paginated_response.freezed.dart';
part 'product_paginated_response.g.dart';

@freezed
class ProductPaginatedResponse with _$ProductPaginatedResponse {
  const factory ProductPaginatedResponse({
    dynamic success,
    final String? status,
    final String? message,
    required final ProductPayload payload,
  }) = _ProductPaginatedResponse;

  factory ProductPaginatedResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductPaginatedResponseFromJson(json);
}

@freezed
class ProductPayload with _$ProductPayload {
  const factory ProductPayload({
    @Default([])  List<Product> content,
    required final int totalPages,
    required final int totalElements,
    required final int numberOfElements,
    required final bool last,
    required final bool first,
    required final bool empty,
  }) = _ProductPayload;

  factory ProductPayload.fromJson(Map<String, dynamic> json) =>
      _$ProductPayloadFromJson(json);
}
