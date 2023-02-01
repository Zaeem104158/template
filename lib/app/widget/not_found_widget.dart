import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import '../../app/widget/text_widget.dart';
import '../../app/exports/generated_values_export.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({
    Key? key,
    this.error,
    this.fromNoDataError = true,
  }) : super(key: key);

  final String? error;
  final bool fromNoDataError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: fromNoDataError
          ? null
          : AppBarWidget(
              title: LocaleKeys.pageNotFound.tr(),
              leadingWidget: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.arrow_back_outlined,
                    color: colorPrimary,
                  ),
                ),
              ),
            ),
      body: Center(
        child: TextWidget(
          error != null
              ? error!
              : fromNoDataError
                  ? LocaleKeys.noDataFound.tr()
                  : LocaleKeys.pageNotFound.tr(),
        ),
      ),
    );
  }
}
