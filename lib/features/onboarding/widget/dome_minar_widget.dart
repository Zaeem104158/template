import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

import '../../../app/values/app_fonts.dart';
import '../../../app/widget/text_widget.dart';

class DomeMinarWidget extends StatelessWidget {
  const DomeMinarWidget({
    Key? key,
    required this.child,
    this.tapNavigationIcon,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? tapNavigationIcon;

  @override
  Widget build(BuildContext context) {
    SizeConfig.enableProtraitOnly();
    final screenWidth = double.infinity;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: SizeConfig.getScreenHeight(context),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 155,
                    ),
                    TextWidget(
                      LocaleKeys.asSalamuAlaikum.tr(),
                      fontWeight: mediumFontWeight,
                      fontSize: titleFontSize,
                    ),
                    child,
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Assets.logos.domeLogo.image(
                  fit: BoxFit.fitWidth,
                  width: screenWidth,
                ),
              ),
              Positioned(
                top: 16,
                left: 12,
                child: InkWell(
                  onTap: tapNavigationIcon,
                  child: Icon(
                    Icons.arrow_back,
                    color: colorWhite,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Assets.logos.masjidMinarLogo.image(
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
    );
  }
}
