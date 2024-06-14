import 'package:cashir/modules/receipt_client/controllers/delete_client_receipt.controller.dart';
import 'package:cashir/modules/receipt_client/controllers/fetch_client_receipts.controller.dart';
import 'package:cashir/modules/receipt_client/models/receipt_client.model.dart';
import 'package:cashir/shared/widgets/common/delete_alert.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/paginated_list.widget.dart';
import 'package:flutter/material.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as app_colors;
import '../../../shared/utils/configure_date.dart';
import '../../../shared/widgets/common/filters_sheet.dart';
import '../../../shared/widgets/common/wrapper.widget.dart';
import '../../../shared/widgets/oprations/add_client_autocomplete.widget.dart';
import '../models/fetch_client_receipts.request.dart';

class ClientReceiptsScreen extends StatefulWidget {
  const ClientReceiptsScreen({super.key});

  @override
  State<ClientReceiptsScreen> createState() => _ClientReceiptsScreenState();
}

class _ClientReceiptsScreenState extends State<ClientReceiptsScreen> {
  @override
  void initState() {
    super.initState();

    Get.find<FetchClientReceiptsController>().execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Client Receipts".tr,
      showBottomBar: false,
      actions: [_FiltersButton()],
      floatingActionButton: FloatingActionButton(
        backgroundColor: app_colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/compony/client-receipts/create');
        },
      ),
      child: Obx(() {
        final controller = Get.find<FetchClientReceiptsController>();

        if (controller.isLoading.isTrue) return const Loader();

        return PaginatedList(
            controller: controller,
            listItemBuilder: (item, index) {
              return ListTile(
                title: Row(
                  children: [
                    Text("#${item.id} - "),
                    Text(item.client?.name ?? "(${"No Client".tr})"),
                    const SizedBox(width: 16),
                    Text("(\$${item.amount})"),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _DeleteButton(item: item),
                  ],
                ),
                subtitle: item.createdAt == null
                    ? null
                    : Text(
                        item.createdAt != null
                            ? DateFormat("yyyy-MM-dd").format(item.createdAt!)
                            : "No Date".tr,
                      ),
              );
            });
      }),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  final ClientReceipt item;

  const _DeleteButton({required this.item});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        showDeleteAlert(
          context: context,
          text: "are you sure you want to delete this receipt?!",
          onDelete: () {
            Get.find<DeleteClientReceiptController>().execute(id: item.id);
          },
        );
      },
      color: app_colors.buttonDanger,
    );
  }
}

class _FiltersButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    'clientId': FormControl(),
    "fromDate": FormControl<DateTime>(value: DateTime.now().copyWith(day: 1)),
    "toDate": FormControl<DateTime>(value: DateTime.now()),
  });

  _FiltersButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showFiltersSheet(
          context: context,
          form: _form,
          children: [
            Wrapper(
              child: ClientIdAutocomplete(label: "No Client".tr),
            ),
          ],
          onApply: onApply,
          onReset: onReset,
        );
      },
      icon: const Icon(Icons.filter_alt),
    );
  }

  void onReset(dates) {
    final controller = Get.find<FetchClientReceiptsController>();

    final from = configureDate(dates["fromDate"]);
    final to = configureDate(dates["toDate"]);

    controller.filters.value = FetchClientReceiptsRequest.fromJson({
      ..._form.value,
      "fromDate": from,
      "toDate": to,
    });

    _form.reset();
    _form.patchValue(dates);

    controller.execute(clearCache: true);

    Get.back();
  }

  void onApply(dates) {
    final controller = Get.find<FetchClientReceiptsController>();
    controller.filters.value =
        FetchClientReceiptsRequest.fromJson({..._form.value, ...dates});

    controller.execute(clearCache: true);

    Get.back();
  }
}
