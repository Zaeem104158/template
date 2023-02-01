import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import '../../../app/values/app_colors.dart';
import '../../../app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/values/api_endpoints.dart';
import 'package:thrive_mobile_app/features/web_view/model/web_view_info.dart';

class TermsConditionWidget extends StatelessWidget {
  const TermsConditionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final privacyPolicy = LocaleKeys.privacyPolicy.tr();
    final termsOfService = LocaleKeys.termsOfService.tr();

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          TextWidget(
            "${LocaleKeys.checkout.tr()} Thrive Agents",
            opacity: 0.8,
            fontSize: 14,
            color: colorDark,
            padding: EdgeInsets.only(
              left: 5,
              right: 5,
            ),
          ),
          TextWidget(
            termsOfService,
            fontSize: 14,
            padding: EdgeInsets.zero,
            textDecoration: TextDecoration.underline,
            onPressed: () => context.push(
              routeWebView,
              extra: WebViewInfo(
                title: termsOfService,
                apiPath: "$termsPrivacyEndpoint/terms-and-condition",
              ),
            ),
          ),
          TextWidget(
            LocaleKeys.and.tr(),
            opacity: 0.8,
            fontSize: 14,
            color: colorDark,
            padding: EdgeInsets.only(
              left: 5,
              right: 5,
            ),
          ),
          TextWidget(
            privacyPolicy,
            fontSize: 14,
            padding: EdgeInsets.zero,
            textDecoration: TextDecoration.underline,
            onPressed: () => context.push(
              routeWebView,
              extra: WebViewInfo(
                title: privacyPolicy,
                apiPath: "$termsPrivacyEndpoint/privacy-policy",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
