import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';

import '../../auth/state/auth_state.dart';
import '../../../app/routes/route_paths.dart';
import '../../../app/widget/text_widget.dart';
import '../../../shared/utils/extensions.dart';
import '../../../app/widget/button_widget.dart';
import '../provider/auth_validation_provider.dart';
import '../../../app/widget/image_view_widget.dart';
import '../../../app/exports/app_values_export.dart';
import '../../../app/widget/text_form_field_wiget.dart';
import '../../../app/exports/generated_values_export.dart';
import '../../../features/auth/provider/auth_provider.dart';
import '../../../app/widget/password_text_form_field_widget.dart';
import '../../web_view/widget/terms_condition_widget.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({
    Key? key,
    this.isFromNavigationDrawer,
  }) : super(key: key);

  final bool? isFromNavigationDrawer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transparentColor = Colors.transparent;
    final isLandscape = SizeConfig.isLandscapeMode(context);
    final requestProvider = ref.read(loginRequestProvider.notifier);

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.login.tr(),
        isMenuIcon: true,
      ),
      body: InkWell(
        focusColor: transparentColor,
        hoverColor: transparentColor,
        splashColor: transparentColor,
        highlightColor: transparentColor,
        onTap: () => closeSoftKeyBoard(),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                ImageViewWidget(
                  width: 140,
                  height: 140,
                  isCircular: false,
                  isLocalAsset: true,
                  boxFit: BoxFit.contain,
                  imageUrl: context.isDarkMode
                      ? Assets.logos.splashScreenLogoDark.path
                      : Assets.logos.splashScreenLogo.path,
                ),
                TextFormFieldWidget(
                  hint: LocaleKeys.email.tr(),
                  isEmailValidation: true,
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  onChanged: (String? value) {
                    requestProvider.setEmail(value);
                  },
                ),
                PasswordTextFormFieldWidget(
                  hint: LocaleKeys.password.tr(),
                  isFullValidate: false,
                  onChanged: (String? value) {
                    requestProvider.setPassword(value);
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                Consumer(
                  builder: (context, ref, child) {
                    ref.watch(authStateProvider);
                    ref.watch(loginRequestProvider);
                    final stateNotifier = ref.read(authStateProvider.notifier);

                    ref.listen<AuthState>(authStateProvider, (previous, next) {
                      next.whenOrNull(
                        error: (error) => error.showSnackBar(context),
                        data: (data) => data.toString().showSnackBar(context),
                      );
                    });

                    return ButtonWidget(
                      text: LocaleKeys.signIn.tr(),
                      isLoading: stateNotifier.isLoading(),
                      onPressed: requestProvider.isInvalid()
                          ? null
                          : () => stateNotifier.login(),
                    );
                  },
                ),
                TextWidget(
                  LocaleKeys.forgotPassword.tr(),
                  fontSize: semiTextFontSize,
                  padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                  onPressed: () => context.push(routeForgotPassword),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (isLandscape) ...[
                  const TermsConditionWidget(),
                ],
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: !isLandscape ? const TermsConditionWidget() : null,
    );
  }
}
