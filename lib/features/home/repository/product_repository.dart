import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/home/state/product_state.dart';

abstract class ProductRepository {
  Future<CommonResponse> getDefyFrontendBaseUrl();

  Future<ProductState> getHomePageData({int? pageSize});

  Future<PaginationState> getAllPaginatedProducts(
    int pageNo, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });
}
