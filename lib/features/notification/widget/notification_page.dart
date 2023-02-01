import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/features/error/paginated_error_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import '../../../app/widget/appbar_widget.dart';
import '../../../app/exports/generated_values_export.dart';
import '../../../app/widget/refresh_indicator_widget.dart';
import '../../../features/notification/provider/notification_provider.dart';
import '../../../features/notification/model/notification/notification_data.dart';
import '../../../features/notification/widget/notification_list_view_widget.dart';

class NotificationPage extends ConsumerWidget {
  NotificationPage({
    Key? key,
    this.isFromNavigationDrawer,
  }) : super(key: key);

  final bool? isFromNavigationDrawer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<PaginationState>(notificationStateProvider, (prev, next) {
      if (next.isPaginatedError) {
        next.error.showSnackBar(context);
      }
    });

    final _scrollController = ref.watch(scrollControllerProvider);
    final _notificationState = ref.watch(notificationStateProvider);
    final _notificationNotifier = ref.read(notificationStateProvider.notifier);
    _notificationNotifier.scrollListener(_scrollController);

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.notification.tr(),
        isMenuIcon: isFromNavigationDrawer == true,
        isShowNavigateIcon:
            isFromNavigationDrawer == null || isFromNavigationDrawer == false,
      ),
      body: RefreshIndicatorWidget(
        onRefresh: () => _notificationNotifier.getPaginatedData(
          fromRefresh: true,
        ),
        child: _notificationState.isLoading
            ? ShimmerWidget(
                widget: const NotificationListViewWidget(),
              )
            : _notificationNotifier.isErrorOccurred()
                ? PaginatedErrorWidget(
                    notifier: _notificationNotifier,
                    state: _notificationState,
                  )
                : NotificationListViewWidget(
                    scrollController: _scrollController,
                    isFetchingNext: _notificationState.isFetchingNext,
                    notifications:
                        convertToNotificationDatas(_notificationState.datas),
                    onPressed: (notification) {
                      notificationNavigateToRoute(context, notification.type);
                    },
                  ),
      ),
    );
  }

  static void notificationNavigateToRoute(BuildContext context, String type) {
    if (type == NotificationType.POLICY_CREATED.name ||
        type == NotificationType.POLICY_EXPIRING.name ||
        type == NotificationType.POLICY_EXPIRED.name) {
      context.push(routePolicy);
    } else if (type == NotificationType.OPPORTUNITY_CREATED.name) {
      context.push(routeOpportunity);
    } else if (type == NotificationType.CLAIM_REQUEST.name) {
      context.push(routeCreateClaim);
    }
  }
}
