import 'package:cashir/modules/suppliers/controllers/search_suppliers.controller.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/autocomplete_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/search_result.model.dart';

class SupplierIdAutocomplete extends StatelessWidget {
  final String? label;
  const SupplierIdAutocomplete({this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: AutocompleteInput(
        title: "Supplier".tr,
        formControlName: "supplierId",
        defaultValue:
            SearchResult(id: null, name: label ?? "on run purches".tr),
        suggestionsCallback: (String searchKey) async =>
            await Get.find<SearchSuppliersController>()
                .execute(searchKey: searchKey),
      ),
    );
  }
}
