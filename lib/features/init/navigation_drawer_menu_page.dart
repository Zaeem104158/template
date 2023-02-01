import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/init/navigation_drawer_menu_item.dart';

class NavigationDrawerMenuPage extends ConsumerWidget {
  const NavigationDrawerMenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  final NavigationMenuItem currentItem;
  final ValueChanged<NavigationMenuItem> onSelectedItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isLandscapeMode = SizeConfig.isLandscapeMode(context);
    final double closeIconPadding = isLandscapeMode ? 0 : 16;

    late final List<NavigationMenuItem> menuItems;
    if (ref.watch(loggedInUserSateProvider) != null) {
      menuItems = NavigationMenuItemHelper.loggedInMenuItems;
    } else {
      menuItems = NavigationMenuItemHelper.logoutMenuItems;
    }

    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(isLandscapeMode ? 35 : 56),
          child: AppBar(
            title: GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(
                  top: closeIconPadding,
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white60,
                  size: isLandscapeMode ? 20 : 24,
                ),
              ),
              onTap: () {
                ZoomDrawer.of(context)?.toggle();
                closeSoftKeyBoard();
              },
            ),
            backgroundColor: colorPrimary,
            elevation: 0,
          ),
        ),
        backgroundColor: colorPrimary,
        body: Column(
          children: [
            _AcoountHeader(),
            Flexible(
              child: ListView(
                children: [
                  ...menuItems.map((item) {
                    return ListTileTheme(
                      selectedColor: Colors.white,
                      child: ListTile(
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        visualDensity: VisualDensity(
                          vertical: isLandscapeMode ? -2 : -0.5,
                        ),
                        selectedTileColor: Colors.black12,
                        selected: currentItem == item,
                        minLeadingWidth: 10,
                        leading: Icon(
                          item.icon,
                          color: Colors.white,
                          size: isLandscapeMode ? 20 : 24,
                        ),
                        title: Text(
                          item.title.tr(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isLandscapeMode
                                ? smallFontSize
                                : semiTextFontSize,
                          ),
                        ),
                        onTap: () => onSelectedItem(item),
                      ),
                    );
                  }).toList(),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AcoountHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isLandscapeMode = SizeConfig.isLandscapeMode(context);
    final loggedInUserSate = ref.watch(loggedInUserSateProvider);
    final double imageSize = isLandscapeMode ? 75 : 102;
    final fileUrl = loggedInUserSate?.photo?.fileUrl;

    return Container(
      margin: EdgeInsets.only(
        top: isLandscapeMode ? 0 : 24,
      ),
      color: colorPrimary,
      child: Column(
        children: [
          ImageViewWidget(
            borderWidth: 0.5,
            width: imageSize,
            height: imageSize,
            borderColor: colorGrey,
            isLocalAsset: fileUrl == null,
            placeHolderIcon: Assets.icons.userPlaceholder.path,
            imageUrl: fileUrl ?? Assets.icons.userPlaceholder.path,
            onPressed: () => showImageDialog(
              context,
              fileUrl,
              backgroundColor: context.isDarkMode ? colorDarkMode : colorWhite,
            ),
          ),
          TextWidget(
            loggedInUserSate?.name ?? LocaleKeys.guestUser.tr(),
            color: colorWhite,
            fontWeight: mediumFontWeight,
            maxLines: isLandscapeMode ? 1 : 2,
            textOverflow: TextOverflow.ellipsis,
            fontSize: isLandscapeMode ? semiTextFontSize : textFontSize,
            padding: EdgeInsets.fromLTRB(
              12,
              isLandscapeMode ? 3 : 8,
              12,
              isLandscapeMode ? 0 : 3,
            ),
          ),
          if (loggedInUserSate != null && !loggedInUserSate.email.isBlank) ...[
            TextWidget(
              loggedInUserSate.email,
              color: colorFadeAsh,
              maxLines: isLandscapeMode ? 1 : 2,
              textOverflow: TextOverflow.ellipsis,
              fontSize: isLandscapeMode ? smallFontSize : semiTextFontSize,
              padding: EdgeInsets.fromLTRB(8, 0, 8, isLandscapeMode ? 3 : 8),
            ),
          ],
          const Divider(
            height: 8,
          ),
        ],
      ),
    );
  }
}
