import '../../../app/values/constants.dart';
import '../../../shared/utils/extensions.dart';
import '../../../app/state/common/common_state.dart';
import '../../../app/model/common/common_response.dart';
import '../../../shared/network/api_client_provider.dart';
import '../../../app/exports/generated_values_export.dart';
import '../../../app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import '../../../features/notification/repository/notification_repository.dart';
import '../../../features/notification/model/notification_response/notification_response.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final ApiClient _apiClient;

  const NotificationRepositoryImpl(this._apiClient);

  @override
  Future<CommonState> markAsRead() async {
    final response = await _apiClient.postRequest(
      "/notification/mark-as-read",
      {},
    );

    return response.when(success: (success) {
      return CommonState.data(CommonResponse.fromJson(success));
    }, error: (error) {
      return CommonState.error(error);
    });
  }

  @override
  Future<int> getUnreadCount() async {
    final response = await _apiClient.getRequest(
      "/notification/unread-counter",
    );

    return response.when(success: (success) {
      return CommonResponse.fromJson(success).payload as int;
    }, error: (error) {
      return 0;
    });
  }

  @override
  Future<PaginationState> getAllPaginatedData(
    int pageNo, {
    int? pageSize,
  }) async {
    final response = await _apiClient.getRequest(
      "/notification/all",
      query: {
        pageNoParam: pageNo,
        sortByParam: sortByValue,
        ascOrDescParam: SortByType.desc.name,
        pageSizeParam: pageSize ?? defaultPageSize,
      },
    );

    return response.when(success: (success) {
      final notificationResponse =
          NotificationResponse.fromJson(success).payload;

      if (notificationResponse.content.isBlank) {
        return PaginationState(
          error: LocaleKeys.noDataFound.tr(),
        );
      } else {
        return PaginationState(
          datas: notificationResponse.content,
          isLastPage: notificationResponse.last,
        );
      }
    }, error: (error) {
      return PaginationState(
        error: error,
      );
    });
  }
}
