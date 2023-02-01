import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

abstract class SizeConfig {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Orientation getScreenOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  static bool isLandscapeMode(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static void enableProtraitOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}
