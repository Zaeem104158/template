import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import '../../../app/model/common/common_response.dart';
import '../../../app/values/app_types.dart';

abstract class DocRepository {
  Future<PaginationState> getAllPaginatedDoc(
    int pageNo,
    DocType createdDocType, {
    int? pageSize,
    Map<String, dynamic>? queryMap,
  });

  Future<CommonResponse> createDoc(
    DocType docType,
    Map<String, dynamic> request,
  );

  Future<CommonResponse> deleteDoc(int id);
}
