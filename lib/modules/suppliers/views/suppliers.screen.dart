import 'package:cashir/modules/suppliers/controllers/delete_supplier.controller.dart';
import 'package:cashir/modules/suppliers/controllers/fetch_suppliers.controller.dart';
import 'package:cashir/modules/suppliers/models/fetch_suppliers.request.dart';
import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/widgets/common/delete_alert.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/paginated_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as colors;
import '../../../shared/widgets/common/filters_sheet.dart';
import '../../../shared/widgets/common/wrapper.widget.dart';
import '../../../shared/widgets/forms/text_input.widget.dart';

class SuppliersScreen extends StatefulWidget {
  const SuppliersScreen({super.key});

  @override
  State<SuppliersScreen> createState() => _SuppliersScreenState();
}

class _SuppliersScreenState extends State<SuppliersScreen> {
  final controller = Get.find<FetchSuppliersController>();

  @override
  void initState() {
    super.initState();

    Get.find<FetchSuppliersController>().execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Suppliers".tr,
      showBottomBar: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/compony/suppliers/create');
        },
      ),
      actions: [_FiltersButton()],
      child: Obx(() {
        if (controller.isLoading.isTrue) return const Loader();

        return PaginatedList(
          controller: controller,
          listItemBuilder: (item, index) {
            return ListTile(
              title: Text(item.name),
              onTap: () => Get.toNamed('/compony/suppliers/${item.id}/edit'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _DeleteButton(supplier: item),
                  IconButton(
                    icon: const Icon(Icons.edit, color: colors.buttonPrimary),
                    onPressed: () =>
                        Get.toNamed('/compony/suppliers/${item.id}/edit'),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  final SupplierModel supplier;
  const _DeleteButton({required this.supplier});

  ensureDelete(BuildContext context) {
    showDeleteAlert(
      context: context,
      text: "Are you sure to delete supplier?",
      onDelete: () {
        Get.find<DeleteSupplierController>().execute(supplier: supplier);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete, color: colors.buttonDanger),
      onPressed: () => ensureDelete(context),
    );
  }
}

class _FiltersButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    'search': FormControl(),
    "fromDate": FormControl<DateTime>(),
    "toDate": FormControl<DateTime>(),
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
              child: TextInput(
                title: "name".tr,
                formControlName: "search",
              ),
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
    final controller = Get.find<FetchSuppliersController>();

    controller.filters.value = FetchSuppliersRequest.fromJson({
      ..._form.value,
    });

    _form.reset();

    controller.execute(clearCache: true);

    Get.back();
  }

  void onApply(dates) {
    final controller = Get.find<FetchSuppliersController>();
    controller.filters.value =
        FetchSuppliersRequest.fromJson({..._form.value, ...dates});

    controller.execute(clearCache: true);

    Get.back();
  }
}
