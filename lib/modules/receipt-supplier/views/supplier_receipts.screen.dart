import 'package:cashir/modules/receipt-supplier/controllers/delete_supplier_receipt.controller.dart';
import 'package:cashir/modules/receipt-supplier/controllers/fetch_supplier_receipts.controller.dart';
import 'package:cashir/modules/receipt-supplier/models/receipt_supplier.model.dart';
import 'package:cashir/shared/widgets/common/delete_alert.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/paginated_list.widget.dart';
import 'package:cashir/shared/widgets/oprations/add_supplier_autocomplete.widget.dart';
import 'package:flutter/material.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as app_colors;
import '../../../shared/utils/configure_date.dart';
import '../../../shared/widgets/common/filters_sheet.dart';
import '../../../shared/widgets/common/wrapper.widget.dart';
import '../models/fetch_supplier_receipts.request.dart';

class SupplierReceiptsScreen extends StatefulWidget {
  const SupplierReceiptsScreen({super.key});

  @override
  State<SupplierReceiptsScreen> createState() => _SupplierReceiptsScreenState();
}

class _SupplierReceiptsScreenState extends State<SupplierReceiptsScreen> {
  @override
  void initState() {
    super.initState();

    Get.find<FetchSupplierReceiptsController>().execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Supplier Receipts".tr,
      actions: [
        _FiltersButton(),
      ],
      floatingActionButton: FloatingActionButton(
        backgroundColor: app_colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/compony/supplier-receipts/create');
        },
      ),
      child: Obx(() {
        final controller = Get.find<FetchSupplierReceiptsController>();

        if (controller.isLoading.isTrue) return const Loader();

        return PaginatedList(
            controller: controller,
            listItemBuilder: (item, index) {
              return ListTile(
                title: Row(
                  children: [
                    Text("#${item.id} - "),
                    Text(item.supplier?.name ?? "(${"No Supplier".tr})"),
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
                subtitle: Text(DateFormat("yyyy-MM-dd").format(item.createdAt)),
              );
            });
      }),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  final SupplierReceipt item;

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
            Get.find<DeleteSupplierReceiptController>().execute(id: item.id);
          },
        );
      },
      color: app_colors.buttonDanger,
    );
  }
}

class _FiltersButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    'supplierId': FormControl(),
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
              child: SupplierIdAutocomplete(label: "No Supplier".tr),
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
    final controller = Get.find<FetchSupplierReceiptsController>();

    final from = configureDate(dates["fromDate"]);
    final to = configureDate(dates["toDate"]);

    controller.filters.value = FetchSupplierReceiptsRequest.fromJson({
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
    final controller = Get.find<FetchSupplierReceiptsController>();
    controller.filters.value =
        FetchSupplierReceiptsRequest.fromJson({..._form.value, ...dates});

    controller.execute(clearCache: true);

    Get.back();
  }
}
