import 'package:freezed_annotation/freezed_annotation.dart';
import '../product/product.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    dynamic success,
    final String? status,
    final String? message,
    final List<Product>? payload,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}
