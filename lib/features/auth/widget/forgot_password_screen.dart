import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import '../../../app/widget/text_widget.dart';
import '../../../shared/utils/extensions.dart';
import '../../../app/widget/button_widget.dart';
import '../../auth/provider/auth_provider.dart';
import '../../../app/widget/appbar_widget.dart';
import '../../../app/exports/app_values_export.dart';
import '../../../features/auth/state/auth_state.dart';
import '../../../app/model/common/common_response.dart';
import '../../../app/widget/text_form_field_wiget.dart';
import '../../../app/exports/generated_values_export.dart';
import '../../auth/provider/auth_validation_provider.dart';

class ForgotPasswordPage extends ConsumerWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authStateProvider);
    ref.watch(forgotPasswordEmailStateProvider);

    ref.listen<AuthState>(authStateProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          var response = data as CommonResponse;
          response.message.showSnackBar(context);
          context.pop();
        },
        error: (error) {
          error.showSnackBar(context);
        },
      );
    });

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.forgotPassword.tr(),
      ),
      body: GestureDetector(
        onTap: () => closeSoftKeyBoard(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              TextWidget(
                LocaleKeys.enterEmailBelow.tr(),
                opacity: 0.5,
                color: colorDark,
                forceDarkMode: true,
                textAlign: TextAlign.center,
              ),
              TextFormFieldWidget(
                hint: LocaleKeys.email.tr(),
                isEmailValidation: true,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                onChanged: (String? value) {
                  ref.read(forgotPasswordEmailStateProvider.notifier).state =
                      value;
                },
              ),
              ButtonWidget(
                text: LocaleKeys.submit.tr(),
                isLoading: ref.watch(authStateProvider.notifier).isLoading(),
                onPressed: ref
                        .watch(forgotPasswordEmailStateProvider.notifier)
                        .state
                        .isBlank
                    ? null
                    : () =>
                        ref.read(authStateProvider.notifier).forgotPassword(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
