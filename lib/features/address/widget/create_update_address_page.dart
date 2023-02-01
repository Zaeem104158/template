import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';
import 'package:thrive_mobile_app/features/address/provider/address_provider.dart';
import 'package:thrive_mobile_app/features/address/provider/address_validation_provider.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/address/state/address_state.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

class CreateUpdateAddressPage extends ConsumerWidget {
  const CreateUpdateAddressPage({
    required this.address,
    Key? key,
  }) : super(key: key);

  final Address? address;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressNotifier = ref.read(addressStateProvider.notifier);
    final requestNotifier = ref.read(addressRequestProvider.notifier);

    Future.delayed(Duration.zero).then((value) {
      requestNotifier.setAddress(address);
    });

    ref.listen<AddressState>(addressStateProvider, (prev, next) {
      next.whenOrNull(
        error: (error) => error.showSnackBar(context),
        data: (addressResponse) {
          addressResponse.message.showSnackBar(context);
          context.pop();
        },
      );
    });

    return Scaffold(
      appBar: AppBarWidget(
        title: address != null
            ? "${LocaleKeys.edit.tr()} ${LocaleKeys.address.tr()}"
            : LocaleKeys.createAddress.tr(),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => closeSoftKeyBoard(),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              TextFormFieldWidget(
                hint: LocaleKeys.zipCode.tr(),
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
                defaultValue: address?.zipCode,
                onChanged: (String? value) {
                  requestNotifier.setZipCode(value);
                },
              ),
              TextFormFieldWidget(
                hint: LocaleKeys.city.tr(),
                defaultValue: address?.city,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
                onChanged: (String? value) {
                  requestNotifier.setCity(value);
                },
              ),
              TextFormFieldWidget(
                hint: LocaleKeys.state.tr(),
                defaultValue: address?.state,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
                onChanged: (String? value) {
                  requestNotifier.setState(value);
                },
              ),
              TextFormFieldWidget(
                hint: LocaleKeys.street.tr(),
                maxLines: 3,
                defaultValue: address?.street,
                textInputAction: TextInputAction.newline,
                textInputType: TextInputType.multiline,
                onChanged: (String? value) {
                  requestNotifier.setStreet(value);
                },
              ),
              Consumer(
                builder: (context, ref, child) {
                  ref.watch(addressStateProvider);
                  ref.watch(addressRequestProvider);

                  return ButtonWidget(
                    text: address != null
                        ? LocaleKeys.update.tr()
                        : LocaleKeys.create.tr(),
                    isLoading: addressNotifier.isLoading(),
                    onPressed: requestNotifier.isInvalid()
                        ? null
                        : () => addressNotifier.createUpdateAddress(),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
