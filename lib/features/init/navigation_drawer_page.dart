import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../app/model/user/user.dart';
import '../../app/routes/route_paths.dart';
import 'navigation_drawer_menu_item.dart';
import 'navigation_drawer_menu_page.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

class NavigationDrawerPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<User?>(loggedInUserSateProvider, (prev, next) {
      final _navNotifier = ref.read(navigationMenuItemProvider.notifier);

      if (next != null) {
        if (prev == null) {
          _navNotifier.state = NavigationMenuItemHelper.home;
        }
      } else {
        context.hideSnackBar();
        
        Future.delayed(Duration.zero).then((value) {
          context.go(routeNavigation);
          _navNotifier.state = NavigationMenuItemHelper.logout;
        });
      }
    });

    return ZoomDrawer(
      showShadow: true,
      mainScreenTapClose: true,
      style: DrawerStyle.defaultStyle,
      menuBackgroundColor: colorPrimary,
      drawerShadowsBackgroundColor: colorBlueLight,
      angle: SizeConfig.isLandscapeMode(context) ? 0 : -3,
      mainScreen: NavigationMenuItemHelper.getNavigatedWidget(
        ref.watch(navigationMenuItemProvider),
      ),
      menuScreen: Builder(
        builder: (context) {
          return NavigationDrawerMenuPage(
            currentItem: ref.watch(navigationMenuItemProvider),
            onSelectedItem: (item) {
              if (item == NavigationMenuItemHelper.logout) {
                showAlertDialog(
                  context,
                  LocaleKeys.logout.tr(),
                  cancelText: LocaleKeys.cancel.tr(),
                  confirmText: LocaleKeys.logout.tr(),
                  clickEvent: (onConfirm, onCancel) {
                    if (onConfirm) {
                      logoutUser(ref.read);
                      LocaleKeys.loggedOutMessage.tr().showSnackBar(context);
                      ZoomDrawer.of(context)?.close();
                    }
                  },
                );
              } else {
                ref.read(navigationMenuItemProvider.notifier).state = item;
                ZoomDrawer.of(context)?.close();
              }

              ref.read(statusProvider.notifier).state = 0;
            },
          );
        },
      ),
    );
  }
}
