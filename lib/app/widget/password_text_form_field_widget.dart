import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import '../exports/app_values_export.dart';
import '../exports/generated_values_export.dart';

class PasswordTextFormFieldWidget extends StatefulWidget {
  final String font;
  final String? hint;
  final double? fontSize;
  final EdgeInsets padding;
  final Color textFontColor;
  final bool isFullValidate;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final FontWeight fontWeight;
  final Color? suffixIconColor;
  final TextInputAction? textInputAction;
  final Function(String? value)? onChanged;

  const PasswordTextFormFieldWidget({
    Key? key,
    this.hint,
    this.suffixIcon,
    this.prefixIcon,
    this.onChanged,
    this.isFullValidate = true,
    this.fontSize = textFontSize,
    this.font = defaultFont,
    this.fontWeight = regularFontWeight,
    this.textFontColor = colorText,
    this.suffixIconColor = colorPrimary,
    this.textInputAction = TextInputAction.done,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
  }) : super(key: key);

  @override
  _PasswordTextFormFieldWidgetState createState() =>
      _PasswordTextFormFieldWidgetState();
}

class _PasswordTextFormFieldWidgetState extends State<PasswordTextFormFieldWidget> {
  bool _fieldVisibility = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;

    return Padding(
      padding: widget.padding,
      child: Form(
        key: _formKey,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: widget.onChanged != null
              ? (value) {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate()) {
                    widget.onChanged!(value);
                  } else {
                    widget.onChanged!(null);
                  }
                }
              : null,
          validator: (value) {
            var hintText = widget.hint ?? "";

            if (value == null || value.trim().isEmpty) {
              return hintText + LocaleKeys.emptyFieldWarning.tr();
            } else if (widget.isFullValidate) {
              if (value.length <= 7) {
                return hintText + LocaleKeys.maxLengthWarning.tr();
              } else if (value.contains(" ")) {
                return hintText + LocaleKeys.canNotContainWhiteSpace.tr();
              } else if (!passwordValidation(value)) {
                return hintText + LocaleKeys.specialCharWarning.tr();
              }
            }

            return null;
          },
          style: GoogleFonts.getFont(
            widget.font,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            color: isDarkMode ? colorWhite : widget.textFontColor,
          ),
          obscureText: _fieldVisibility,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: widget.textInputAction,
          decoration: InputDecoration(
            hintText: widget.hint ?? "",
            labelText: widget.hint ?? "",
            errorMaxLines: 2,
            contentPadding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            suffixIcon: IconButton(
              padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
              icon: Icon(
                _fieldVisibility ? Icons.visibility_off : Icons.visibility,
                color: _fieldVisibility
                    ? Colors.grey
                    : isDarkMode
                        ? colorWhite
                        : widget.suffixIconColor,
              ),
              onPressed: () {
                setState(() {
                  _fieldVisibility = !_fieldVisibility;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  bool passwordValidation(String password) {
    final digitReg = RegExp("[0-9]");
    final specialReg = RegExp("[!@#\$%&*()_+=|<>?{}\\[\\]~-]");

    final digitMatch = digitReg.hasMatch(password);
    final specialMatch = specialReg.hasMatch(password);
    return digitMatch && specialMatch;
  }
}
