import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/widget/password_text_form_field_widget.dart';
import 'package:thrive_mobile_app/features/profile/provider/password_udpate_provider.dart';
import 'package:thrive_mobile_app/features/profile/state/update_password_state.dart';
import 'package:thrive_mobile_app/features/profile/provider/validation_provider/password_validation_provider.dart';

class UpdatePasswordPage extends ConsumerWidget {
  const UpdatePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateNotifier = ref.read(passwordUpdateStateProvider.notifier);
    final updateRequestNotifier =
        ref.read(passwordUpdateRequestProvider.notifier);

    ref.listen<UpdatePasswordState>(passwordUpdateStateProvider, (prev, next) {
      next.whenOrNull(
        error: (error) => error.showSnackBar(context),
        data: (data) {
          data.message.showSnackBar(context);
          context.pop();
        },
      );
    });

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.updatePassword.tr(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            PasswordTextFormFieldWidget(
              hint: LocaleKeys.currentPassword.tr(),
              textInputAction: TextInputAction.next,
              onChanged: (String? value) {
                updateRequestNotifier.setPreviousPassword(value);
              },
            ),
            PasswordTextFormFieldWidget(
              hint: LocaleKeys.newPassword.tr(),
              textInputAction: TextInputAction.done,
              onChanged: (String? value) {
                updateRequestNotifier.setNewPassword(value);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Consumer(
              builder: (context, ref, child) {
                ref.watch(passwordUpdateStateProvider);
                ref.watch(passwordUpdateRequestProvider);

                return ButtonWidget(
                  text: LocaleKeys.update.tr(),
                  isLoading: updateNotifier.isLoading(),
                  onPressed: updateRequestNotifier.isInvalid()
                      ? null
                      : () => updateNotifier.updatePassword(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
