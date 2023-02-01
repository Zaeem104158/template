import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';

class AutoCompleteTextFieldWidget extends StatelessWidget {
  const AutoCompleteTextFieldWidget({
    Key? key,
    this.controller,
    this.onChanged,
    this.hint,
    this.label,
    this.debounceDurationSec = 1,
    required this.onSuggestionSelected,
    required this.itemBuilder,
    required this.suggestionsCallback,
  }) : super(key: key);

  final String? hint;
  final String? label;
  final int debounceDurationSec;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final Function(Object? suggestion) onSuggestionSelected;
  final FutureOr<Iterable<Object?>> Function(String) suggestionsCallback;
  final Widget Function(BuildContext context, Object? suggestion) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
      child: TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 8),
            hintText: hint,
            label: label != null ? Text(label!) : Text(hint ?? ""),
          ),
        ),
        debounceDuration: Duration(seconds: debounceDurationSec),
        getImmediateSuggestions: true,
        noItemsFoundBuilder: (context) => SizedBox(
          height: 40,
          child: Center(
            child: Text(LocaleKeys.noDataFound.tr()),
          ),
        ),
        itemBuilder: itemBuilder,
        suggestionsCallback: suggestionsCallback,
        onSuggestionSelected: onSuggestionSelected,
      ),
    );
  }
}
