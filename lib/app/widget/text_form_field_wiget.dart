import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

import '../exports/app_values_export.dart';
import '../exports/generated_values_export.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String? hint;
  final String font;
  final bool enabled;
  final bool readOnly;
  final int maxLines;
  final bool autofocus;
  final bool isValidate;
  final double? fontSize;
  final EdgeInsets padding;
  final TextAlign textAlign;
  final Color textFontColor;
  final VoidCallback? onTap;
  final Widget? suffixWidget;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool disableLabelText;
  final String? defaultValue;
  final FontWeight fontWeight;
  final bool isEmailValidation;
  final bool isRemoveBottomBorder;
  final EdgeInsets contentPadding;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final Function(String? value)? onChanged;
  final InputBorder? inputDecorationBorder;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FilteringTextInputFormatter? inputFormatters;

  TextFormFieldWidget({
    Key? key,
    this.hint,
    this.onTap,
    this.onChanged,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.suffixWidget,
    this.maxLines = 1,
    this.defaultValue,
    this.enabled = true,
    this.inputFormatters,
    this.font = defaultFont,
    this.readOnly = false,
    this.isValidate = true,
    this.autofocus = false,
    this.inputDecorationBorder,
    this.floatingLabelBehavior,
    this.fontSize = textFontSize,
    this.disableLabelText = false,
    this.isEmailValidation = false,
    this.textFontColor = colorText,
    this.textAlign = TextAlign.start,
    this.isRemoveBottomBorder = false,
    this.fontWeight = regularFontWeight,
    this.prefixIconColor = colorText,
    this.suffixIconColor = colorText,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
    this.contentPadding = const EdgeInsets.fromLTRB(0, 0, 0, 8),
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    final themeData = AdaptiveTheme.of(context).theme;

    return Padding(
      padding: widget.padding,
      child: Form(
        key: _formKey,
        child: TextFormField(
          minLines: 1,
          onTap: widget.onTap,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          readOnly: widget.readOnly,
          textAlign: widget.textAlign,
          autofocus: widget.autofocus,
          controller: widget.controller,
          initialValue: widget.defaultValue,
          cursorColor: isDarkMode ? colorWhite : colorPrimary,
          onChanged: widget.onChanged != null
              ? (value) {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate() &&
                      value.isNotEmpty) {
                    widget.onChanged!(value);
                  } else {
                    widget.onChanged!(null);
                  }
                }
              : null,
          validator: widget.isValidate
              ? (value) {
                  var hintText = widget.hint ?? "";

                  if (value == null || value.trim().isEmpty) {
                    return hintText + LocaleKeys.emptyFieldWarning.tr();
                  } else if (widget.isEmailValidation) {
                    if (value.contains(" ")) {
                      return hintText + LocaleKeys.canNotContainWhiteSpace.tr();
                    } else if (!RegExp(emailPattern).hasMatch(value)) {
                      return "Invalid $hintText Address";
                    }
                  }

                  return null;
                }
              : null,
          inputFormatters:
              widget.inputFormatters == null ? null : [widget.inputFormatters!],
          style: GoogleFonts.getFont(
            widget.font,
            fontWeight: widget.fontWeight,
            fontSize: widget.fontSize,
            color: isDarkMode ? colorWhite : widget.textFontColor,
          ),
          enableSuggestions: true,
          keyboardType: widget.textInputType,
          textInputAction: widget.textInputAction,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintMaxLines: 1,
            errorMaxLines: 2,
            filled: widget.isRemoveBottomBorder,
            fillColor: widget.isRemoveBottomBorder ? Colors.transparent : null,
            focusedBorder: widget.inputDecorationBorder?.copyWith(
              borderSide: BorderSide(
                width: 1.5,
                color: isDarkMode ? themeData.indicatorColor : colorPrimary,
              ),
            ),
            border: widget.inputDecorationBorder?.copyWith(
              borderSide: BorderSide(
                width: 1.5,
                color: isDarkMode ? themeData.indicatorColor : colorPrimary,
              ),
            ),
            floatingLabelBehavior: widget.floatingLabelBehavior,
            suffix: widget.suffixWidget,
            hintText: widget.hint ?? "",
            labelText: widget.disableLabelText ? null : widget.hint ?? "",
            contentPadding: widget.contentPadding,
            prefixIcon: widget.prefixIcon != null
                ? IconButton(
                    icon: Icon(
                      widget.prefixIcon,
                      color: isDarkMode ? colorGrey : widget.prefixIconColor,
                    ),
                    onPressed: () {},
                  )
                : null,
            suffixIcon: widget.suffixIcon != null
                ? IconButton(
                    icon: Icon(
                      widget.suffixIcon,
                      color: context.isDarkMode
                          ? colorGrey
                          : widget.suffixIconColor,
                    ),
                    onPressed: () {},
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
