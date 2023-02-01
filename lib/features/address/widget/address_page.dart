import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/address/provider/address_validation_provider.dart';

class AddressPage extends ConsumerWidget {
  AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addressRequestProvider);

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.address.tr(),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          _AddressRowWidget(LocaleKeys.zipCode.tr(), state.zipCode),
          _AddressRowWidget(LocaleKeys.city.tr(), state.city),
          _AddressRowWidget(LocaleKeys.state.tr(), state.state),
          _AddressRowWidget(LocaleKeys.street.tr(), state.street),
          ButtonWidget(
            text: "${LocaleKeys.edit.tr()} ${LocaleKeys.address.tr()}",
            onPressed: () => context.push(
              routeCreateUpdateAddress,
              extra: ref.read(addressRequestProvider.notifier).getAddress(),
            ),
          ),
        ],
      ),
    );
  }
}

class _AddressRowWidget extends StatelessWidget {
  const _AddressRowWidget(
    this.title,
    this.value, {
    Key? key,
  }) : super(key: key);

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: TextWidget(
                  title,
                  fontSize: textFontSize,
                  padding: EdgeInsets.zero,
                  textAlign: TextAlign.start,
                  fontWeight: mediumFontWeight,
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Flexible(
                flex: SizeConfig.isLandscapeMode(context) ? 14 : 5,
                child: TextWidget(
                  value,
                  padding: EdgeInsets.only(top: 1.8),
                  textAlign: TextAlign.start,
                  fontSize: semiTextFontSize,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
