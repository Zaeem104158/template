/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/amol_alert_icon.png
  AssetGenImage get amolAlertIcon =>
      const AssetGenImage('assets/icons/amol_alert_icon.png');

  /// File path: assets/icons/app_icon.png
  AssetGenImage get appIcon => const AssetGenImage('assets/icons/app_icon.png');

  /// File path: assets/icons/compass_icon.png
  AssetGenImage get compassIcon =>
      const AssetGenImage('assets/icons/compass_icon.png');

  /// File path: assets/icons/default_icon.png
  AssetGenImage get defaultIcon =>
      const AssetGenImage('assets/icons/default_icon.png');

  /// File path: assets/icons/doc_icon.png
  AssetGenImage get docIcon => const AssetGenImage('assets/icons/doc_icon.png');

  /// File path: assets/icons/home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/icons/home_icon.png');

  /// File path: assets/icons/user_head_icon.png
  AssetGenImage get userHeadIcon =>
      const AssetGenImage('assets/icons/user_head_icon.png');

  /// File path: assets/icons/user_placeholder.png
  AssetGenImage get userPlaceholder =>
      const AssetGenImage('assets/icons/user_placeholder.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/intor_image3.png
  AssetGenImage get intorImage3 =>
      const AssetGenImage('assets/images/intor_image3.png');

  /// File path: assets/images/intro_image1.png
  AssetGenImage get introImage1 =>
      const AssetGenImage('assets/images/intro_image1.png');

  /// File path: assets/images/intro_image2.png
  AssetGenImage get introImage2 =>
      const AssetGenImage('assets/images/intro_image2.png');
}

class $AssetsLogosGen {
  const $AssetsLogosGen();

  /// File path: assets/logos/dome_logo.png
  AssetGenImage get domeLogo =>
      const AssetGenImage('assets/logos/dome_logo.png');

  /// File path: assets/logos/masjid_minar_logo.png
  AssetGenImage get masjidMinarLogo =>
      const AssetGenImage('assets/logos/masjid_minar_logo.png');

  /// File path: assets/logos/splash_screen_logo.png
  AssetGenImage get splashScreenLogo =>
      const AssetGenImage('assets/logos/splash_screen_logo.png');

  /// File path: assets/logos/splash_screen_logo_dark.png
  AssetGenImage get splashScreenLogoDark =>
      const AssetGenImage('assets/logos/splash_screen_logo_dark.png');
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/bn.json
  String get bn => 'assets/translations/bn.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogosGen logos = $AssetsLogosGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
