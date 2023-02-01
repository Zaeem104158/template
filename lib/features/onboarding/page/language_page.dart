import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

import '../widget/dome_minar_widget.dart';
import '../../../app/values/app_fonts.dart';
import '../../../app/widget/text_widget.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = SizeConfig.getScreenWidth(context);

    return DomeMinarWidget(
      tapNavigationIcon: () => context.pop(),
      child: Column(
        children: [
          SizedBox(
            height: 28,
          ),
          Card(
            color: colorGrey.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: colorGrey.withOpacity(0.2),
              ),
            ),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  TextWidget(
                    LocaleKeys.selectLanguage.tr(),
                    fontWeight: mediumFontWeight,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ButtonWidget(
                    text: LocaleKeys.english.tr(),
                    width: screenWidth / 1.8,
                    elevation: 0.2,
                    borderRadius: 50,
                    textColor: colorPrimary,
                    buttonColor: colorWhite,
                    onPressed: () => {},
                  ),
                  ButtonWidget(
                    text: LocaleKeys.bangla.tr(),
                    width: screenWidth / 1.8,
                    elevation: 0.2,
                    borderRadius: 50,
                    padding: EdgeInsets.only(top: 0, bottom: 12),
                    onPressed: () => {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
