import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

class NavigationDrawerMenuWidget extends StatelessWidget {
  const NavigationDrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)?.toggle();
        closeSoftKeyBoard();
      },
      icon: Icon(
        Icons.menu,
        color: themeData.iconTheme.color,
      ),
    );
  }
}
