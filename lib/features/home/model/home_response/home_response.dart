import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/home/model/product_list_response/product_list_response.dart';
import 'package:thrive_mobile_app/features/home/model/product_paginated_response/product_paginated_response.dart';

part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
class HomeApiResponse with _$HomeApiResponse {
  const factory HomeApiResponse({
    final ProductPaginatedResponse? productPaginatedResponse,
    final ProductListResponse? productListResponse,
  }) = _HomeApiResponse;

  factory HomeApiResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeApiResponseFromJson(json);
}
