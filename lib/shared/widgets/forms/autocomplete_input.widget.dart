import 'dart:async';

import 'package:cashir/shared/models/search_result.model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_flutter_typeahead/reactive_flutter_typeahead.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AutocompleteInput extends StatelessWidget {
  final String title;
  final String formControlName;
  final Widget? suffixIcon;
  final SearchResult? defaultValue;

  final FutureOr<Iterable<SearchResult>> Function(String) suggestionsCallback;
  final void Function(SearchResult)? onSuggestionSelected;
  final void Function(SearchResult, FormControl)? afterSelect;

  final controlForText = FormControl();

  AutocompleteInput({
    required this.title,
    required this.formControlName,
    required this.suggestionsCallback,
    this.afterSelect,
    this.onSuggestionSelected,
    this.suffixIcon,
    this.defaultValue,
    super.key,
  }) {
    controlForText.value = defaultValue;
  }

  clear(BuildContext context) {
    controlForText.reset();

    final form = ReactiveForm.of(context) as FormGroup;

    form.controls[formControlName]?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        ReactiveTypeAhead(
          formControl: controlForText,
          noItemsFoundBuilder: (context) =>
              Text("we did not found anything!!!".tr),
          minCharsForSuggestions: 1,
          stringify: (SearchResult item) => item.name,
          suggestionsCallback: suggestionsCallback,
          onSuggestionSelected: (SearchResult suggestion) {
            final form = ReactiveForm.of(context) as FormGroup;

            form.controls[formControlName]?.value = suggestion.id;

            afterSelect?.call(suggestion, controlForText);
          },
          debounceDuration: const Duration(milliseconds: 600),
          itemBuilder: (context, item) {
            return ListTile(title: Text(item.name));
          },
          textFieldConfiguration: TextFieldConfiguration(
            onTap: () => clear(context),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              suffixIcon: suffixIcon ?? const Icon(Icons.search),
            ),
          ),
        )
      ],
    );
  }
}
