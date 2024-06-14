import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/autocomplete_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../modules/clients/controllers/search_clients.controller.dart';
import '../../models/search_result.model.dart';

class ClientIdAutocomplete extends StatelessWidget {
  final String? label;
  const ClientIdAutocomplete({this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: AutocompleteInput(
        title: "Client".tr,
        formControlName: "clientId",
        defaultValue: SearchResult(id: null, name: label ?? "on run sale".tr),
        suggestionsCallback: (String searchKey) async =>
            await Get.find<SearchClientsController>()
                .execute(searchKey: searchKey),
      ),
    );
  }
}
