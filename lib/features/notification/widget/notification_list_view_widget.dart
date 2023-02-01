import 'package:flutter/material.dart';
import '../../../gen/assets.gen.dart';
import '../../../app/widget/text_widget.dart';
import '../../../shared/utils/extensions.dart';
import '../../../app/widget/image_view_widget.dart';
import '../../../app/exports/app_values_export.dart';
import '../model/notification/notification_data.dart';
import 'package:thrive_mobile_app/app/widget/circular_progress_widget.dart';

class NotificationListViewWidget extends StatelessWidget {
  const NotificationListViewWidget({
    Key? key,
    this.onPressed,
    this.notifications,
    this.scrollController,
    this.shimmerCount = 12,
    this.isFetchingNext = false,
  }) : super(key: key);

  final int shimmerCount;
  final bool isFetchingNext;
  final ScrollController? scrollController;
  final List<NotificationData>? notifications;
  final Function(NotificationData notification)? onPressed;

  @override
  Widget build(BuildContext context) {
    int length = shimmerCount;
    EdgeInsets textPadding = const EdgeInsets.fromLTRB(0, 45, 0, 25);

    if (!notifications.isBlank) {
      length = notifications!.length;
      textPadding = const EdgeInsets.only(top: 7);
    }

    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: length,
            padding: EdgeInsets.zero,
            controller: scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, position) {
              NotificationData? notification;
              String? imageUrl;
              double paddingBottom =
                  !notifications.isBlank && notifications!.length <= 2 ? 63 : 0;

              if (!notifications.isBlank) {
                notification = notifications![position];
                imageUrl = notification.sender?.photo?.fileUrl;
              }

              return Padding(
                padding: EdgeInsets.fromLTRB(8, 3, 8, paddingBottom),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: colorGrey.withOpacity(0.5),
                      width: context.isDarkMode ? 0.2 : 1,
                    ),
                  ),
                  elevation: 1.5,
                  child: ListTile(
                    onTap: () => onPressed != null && notification != null
                        ? onPressed!(notification)
                        : null,
                    leading: ImageViewWidget(
                      placeHolderIcon: Assets.icons.userPlaceholder.path,
                      imageUrl: imageUrl ?? Assets.icons.userPlaceholder.path,
                      borderWidth: 0.1,
                      isCircular: true,
                      isLocalAsset: imageUrl == null,
                      imageRadius: 30,
                      borderColor: colorPrimary,
                      height: 40,
                      width: 40,
                    ),
                    title: TextWidget(
                      notification?.message,
                      fontSize: textFontSize,
                      font: defaultFont,
                      fontWeight: regularFontWeight,
                      textAlign: TextAlign.start,
                      padding: textPadding,
                    ),
                    subtitle: notification != null &&
                            notification.creationDateTimeStamp > 0
                        ? TextWidget(
                            notification.creationDateTimeStamp
                                .formattedDateFromTimestamp(),
                            fontSize: smallFontSize,
                            font: defaultFont,
                            fontWeight: regularFontWeight,
                            color: colorFadeAsh,
                            textAlign: TextAlign.start,
                            padding: const EdgeInsets.fromLTRB(0, 4, 0, 5),
                          )
                        : null,
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        if (isFetchingNext) ...[
          const CircularProgressWidget(),
        ],
      ],
    );
  }
}
