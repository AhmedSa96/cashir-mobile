import 'package:cashir/modules/products/controllers/delete_product.controller.dart';
import 'package:cashir/modules/products/controllers/fetch_products.controller.dart';
import 'package:cashir/modules/products/models/fetch_products.request.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/widgets/common/delete_alert.dart';
import 'package:cashir/shared/widgets/common/filters_sheet.dart';
import 'package:cashir/shared/widgets/common/loader.widget.dart';
import 'package:cashir/shared/widgets/common/paginated_list.widget.dart';
import 'package:cashir/shared/widgets/common/short_description.widget.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as colors;
// import '../../../shared/utils/configure_date.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  void initState() {
    super.initState();
    Get.find<FetchProductsController>().execute();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Products".tr,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed('/compony/products/create');
        },
      ),
      actions: [_FiltersButton()],
      child: Obx(() {
        final controller = Get.find<FetchProductsController>();

        if (controller.isLoading.isTrue) {
          return const Loader();
        }

        return PaginatedList(
          controller: controller,
          listItemBuilder: (product, index) {
            return ListTile(
              title: Text(product.name),
              subtitle: ShortDescription(text: product.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _DeleteButton(product: product),
                  IconButton(
                    icon: const Icon(Icons.edit, color: colors.buttonPrimary),
                    onPressed: () {
                      Get.toNamed('/compony/products/${product.id}/edit');
                    },
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

class _FiltersButton extends StatelessWidget {
  final FormGroup _form = FormGroup({
    'search': FormControl<String>(),
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
              child: TextInput(title: "name".tr, formControlName: "search"),
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
    final controller = Get.find<FetchProductsController>();

    controller.filters.value = FetchProductsRequest.fromJson({
      ..._form.value,
    });

    _form.reset();

    controller.execute(clearCache: true);

    Get.back();
  }

  void onApply(dates) {
    final controller = Get.find<FetchProductsController>();
    controller.filters.value =
        FetchProductsRequest.fromJson({..._form.value, ...dates});

    controller.execute(clearCache: true);

    Get.back();
  }
}

class _DeleteButton extends StatelessWidget {
  final Product product;

  const _DeleteButton({required this.product});

  void ensureRemove(BuildContext context) {
    showDeleteAlert(
      context: context,
      text: "Are you sure do you want to delete this product?".tr,
      onDelete: () async {
        await Get.find<DeleteProductController>().execute(product.id!);
        Get.back();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete, color: colors.buttonDanger),
      onPressed: () => ensureRemove(context),
    );
  }
}
