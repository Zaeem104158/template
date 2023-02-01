import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import '../../app/values/app_fonts.dart';
import '../../app/routes/route_paths.dart';
import '../../features/notification/provider/notification_provider.dart';
import 'package:thrive_mobile_app/features/init/navigation_drawer_menu_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    this.title,
    this.bottom,
    this.titleWidget,
    this.height = 56,
    this.titleSpacing,
    this.actionWidgets,
    this.leadingWidget,
    this.elevation = 1.3,
    this.isMenuIcon = false,
    this.isCenterTitle = true,
    this.isShowNavigateIcon = true,
    this.removeDefaultPadding = false,
    this.isShowNotificationIcon = false,
  }) : super(key: key);

  final String? title;
  final double height;
  final bool isMenuIcon;
  final double elevation;
  final bool isCenterTitle;
  final Widget? titleWidget;
  final double? titleSpacing;
  final Widget? leadingWidget;
  final bool isShowNavigateIcon;
  final bool removeDefaultPadding;
  final bool isShowNotificationIcon;
  final List<Widget>? actionWidgets;
  final PreferredSizeWidget? bottom;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return AppBar(
      key: key,
      bottom: bottom,
      elevation: elevation,
      titleSpacing: titleSpacing,
      toolbarHeight: preferredSize.height,
      automaticallyImplyLeading: isShowNavigateIcon,
      iconTheme: themeData.iconTheme,
      centerTitle: isCenterTitle,
      title: titleWidget ??
          Text(
            title ?? "",
            style: GoogleFonts.getFont(
              defaultFont,
              fontWeight: mediumFontWeight,
              color: themeData.appBarTheme.foregroundColor,
              fontSize: appBarFontSize,
            ),
          ),
      backgroundColor: themeData.primaryColor,
      leading: isMenuIcon
          ? const NavigationDrawerMenuWidget()
          : isShowNavigateIcon
              ? BackButton(
                  color: themeData.iconTheme.color,
                  onPressed: () {
                    closeSoftKeyBoard();
                    context.hideSnackBar();

                    if (Navigator.canPop(context)) {
                      Navigator.of(context).pop();
                    }
                  },
                )
              : null,
      actions: [
        if (actionWidgets != null && actionWidgets!.isNotEmpty) ...[
          ...actionWidgets!,
        ],
        if (isShowNotificationIcon) ...[
          Consumer(
            builder: (context2, ref, child) {
              final unreadCounter =
                  ref.watch(unreadCounterProvider).asData?.value ?? 0;

              return Container(
                margin: const EdgeInsets.only(
                  top: 14,
                  right: 8,
                ),
                width: 30,
                height: 30,
                child: GestureDetector(
                  onTap: () {
                    if (unreadCounter > 0) {
                      ref.refresh(markAsReadProvider);
                    }

                    context.hideSnackBar();
                    context.push(routeNotification);
                  },
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: themeData.iconTheme.color,
                        size: 26,
                      ),
                      if (unreadCounter > 0) ...[
                        Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.topRight,
                          margin: const EdgeInsets.only(
                            top: 3.5,
                            right: 0.5,
                          ),
                          child: Container(
                            width: 13.5,
                            height: 13.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(
                                0xffc32c37,
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 0.3,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1.5,
                              ),
                              child: Center(
                                child: Text(
                                  unreadCounter > 99 ? "99+" : "$unreadCounter",
                                  style: TextStyle(
                                    fontSize: unreadCounter > 9 ? 7 : 6.5,
                                    color: colorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ],
    );
  }
}
