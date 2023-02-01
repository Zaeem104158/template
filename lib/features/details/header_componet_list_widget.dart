import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/exports/app_values_export.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/widget/header_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

class HeaderComponetListWidget extends StatelessWidget {
  const HeaderComponetListWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<HeaderDataModel> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data.map((e) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!e.title.isBlank) ...[
              HeaderComponent(
                e.title ?? "",
                // color: colorPrimary,
                fontSize: semiTextFontSize,
                padding: const EdgeInsets.only(
                  bottom: 3,
                ),
              ),
            ],
            if (!e.description.isBlank) ...[
              TextWidget(
                e.description,
                fontSize: smallFontSize,
                textAlign: TextAlign.start,
                padding: EdgeInsets.zero,
              ),
            ],
            SizedBox(
              height: 16,
            ),
          ],
        );
      }).toList(),
    );
  }
}
