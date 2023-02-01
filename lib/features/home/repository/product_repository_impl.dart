import 'package:dio/dio.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/home/model/product_list_response/product_list_response.dart';
import 'package:thrive_mobile_app/features/home/model/product_paginated_response/product_paginated_response.dart';
import 'package:thrive_mobile_app/features/home/state/product_state.dart';
import 'package:thrive_mobile_app/shared/preference/preference_manager.dart';
import 'package:thrive_mobile_app/shared/utils/environment.dart';

import '../../../app/values/api_endpoints.dart';
import 'product_repository.dart';
import '../../../app/values/constants.dart';
import '../../../shared/utils/extensions.dart';
import '../../../shared/network/api_client_provider.dart';
import '../../../app/exports/generated_values_export.dart';
import '../../../shared/network/api_response/api_response.dart';
import '../../../features/home/model/home_response/home_response.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ApiClient _apiClient;
  final PreferenceManager _preferenceManager;

  const ProductRepositoryImpl(
    this._apiClient,
    this._preferenceManager,
  );

  @override
  Future<ProductState> getHomePageData({int? pageSize}) async {
    late final APIResponse apiResponse;

    try {
      final jwtToken = await _preferenceManager.getString(keyJwtToken);
      final _dio = _apiClient.getDioInstance;
      final String _baseUrl = getBaseUrl();
      List<Response<dynamic>> responses = [];

      if (!jwtToken.isBlank) {
        responses = await Future.wait([
          _dio.get(
            _apiClient.getFullUrl(
              productsEndpoint,
              _baseUrl,
            ),
            queryParameters: {
              pageNoParam: 0,
              "isActive": true,
              sortByParam: sortByValue,
              ascOrDescParam: SortByType.desc.name,
              pageSizeParam: pageSize ?? defaultPageSize,
            },
          ),
          _dio.get(
              _apiClient.getFullUrl(
                '/products/recommended-product/me',
                _baseUrl,
              ),
              queryParameters: {
                "isActive": true,
                sortByParam: sortByValue,
                ascOrDescParam: SortByType.desc.name,
              })
        ]);
      } else {
        final productResponse = await _dio.get(
          _apiClient.getFullUrl(
            productsEndpoint,
            _baseUrl,
          ),
          queryParameters: {
            pageNoParam: 0,
            "isActive": true,
            sortByParam: sortByValue,
            ascOrDescParam: SortByType.desc.name,
            pageSizeParam: pageSize ?? defaultPageSize,
          },
        );

        responses.add(productResponse);
      }

      if (responses.isNotEmpty) {
        final productsData = responses[0].data;
        final productsResponse =
            ProductPaginatedResponse.fromJson(productsData);

        ProductListResponse? recommendedProductsResponse;
        if (responses.length > 1) {
          recommendedProductsResponse =
              ProductListResponse.fromJson(responses[1].data);
        }

        apiResponse = APIResponse.success(
          HomeApiResponse(
            productPaginatedResponse: productsResponse,
            productListResponse: recommendedProductsResponse,
          ),
        );
      } else {
        apiResponse = APIResponse.error(
          LocaleKeys.somethingWentWrong.tr(),
        );
      }
    } catch (e) {
      apiResponse = e.handleApiException();
    }

    return apiResponse.when(
      success: (value) => ProductState.data(value),
      error: (message) => ProductState.error(message),
    );
  }

  @override
  Future<PaginationState> getAllPaginatedProducts(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  }) async {
    final response = await _apiClient.getRequest(
      productsEndpoint,
      query: {
        pageNoParam: pageNo,
        sortByParam: sortByValue,
        ascOrDescParam: SortByType.desc.name,
        pageSizeParam: pageSize ?? defaultPageSize,
        ...?queryMap,
      },
    );

    return response.when(success: (success) {
      final productsesponse =
          ProductPaginatedResponse.fromJson(success).payload;

      if (productsesponse.content.isBlank) {
        return PaginationState(
          error: LocaleKeys.noDataFound.tr(),
        );
      } else {
        return PaginationState(
          datas: productsesponse.content,
          isLastPage: productsesponse.last,
        );
      }
    }, error: (error) {
      return PaginationState(
        error: error,
      );
    });
  }

  @override
  Future<CommonResponse> getDefyFrontendBaseUrl() async {
    final response = await _apiClient.getRequest(
      "/products/get-front-base-url",
    );

    return response.when(success: (success) {
      return CommonResponse.fromJson(success);
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }
}
