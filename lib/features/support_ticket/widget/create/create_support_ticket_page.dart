import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/state/pagination/pagination_state.dart';
import 'package:thrive_mobile_app/features/support_ticket/provider/support_ticket_provider.dart';
import 'package:thrive_mobile_app/features/support_ticket/provider/support_ticket_validation_provider.dart';

class CreateSupportTicketPage extends ConsumerWidget {
  const CreateSupportTicketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestNotifier = ref.read(supportTicketRequestProvider.notifier);

    ref.listen<PaginationState>(supportTicketStateProvider, (prev, next) {
      if (!next.error.isBlank) {
        next.error.showSnackBar(context);
      }

      if (next.isCreateUpdating) {
        context.pop();
      }
    });

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.createATicket.tr(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            TextFormFieldWidget(
              hint: LocaleKeys.title.tr(),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.text,
              onChanged: (String? value) {
                requestNotifier.setTitle(value);
              },
            ),
            TextFormFieldWidget(
              hint: LocaleKeys.description.tr(),
              isValidate: false,
              textInputType: TextInputType.text,
              onChanged: (String? value) {
                requestNotifier.setDescription(value);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Consumer(
              builder: (context, ref, child) {
                ref.watch(supportTicketRequestProvider);

                return ButtonWidget(
                  text: LocaleKeys.create.tr(),
                  isLoading: ref.watch(supportTicketStateProvider).isLoading,
                  onPressed: requestNotifier.isInvalid()
                      ? null
                      : () {
                          final requestBody =
                              ref.read(supportTicketRequestProvider);

                          ref
                              .read(supportTicketStateProvider.notifier)
                              .createData(requestBody.toJson());
                        },
                );
              },
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
