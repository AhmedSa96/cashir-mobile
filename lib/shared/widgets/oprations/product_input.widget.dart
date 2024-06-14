import 'package:cashir/modules/products/controllers/fetch_product_by_barcode.controller.dart';
import 'package:cashir/modules/products/controllers/fetch_product_by_id.controller.dart';
import 'package:cashir/modules/products/controllers/search_product.controller.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../forms/autocomplete_input.widget.dart';

Future<FormGroup?> _prepareFormGroupByProductId(
    FormGroup form, int productId) async {
  final list = (form.controls["products"] as FormArray);

  final item = list.controls.firstWhere(
    (element) => element.value["productId"] == productId,
    orElse: () => FormGroup({
      "productId": FormControl(),
      "productName": FormControl(),
      "quantity": FormControl(),
      "price": FormControl<double>(),
      "totalPrice": FormControl<double>()
    }),
  );

  if (item.value["productId"] == null) {
    final controller = Get.find<FetchProductByIdController>();
    await controller.fetch(id: productId);

    final product = controller.product?.value;

    if (product?.stock == 0) {
      Get.find<ToastrService>().error("this product is out of stock".tr);
      return null;
    }

    item.patchValue({
      "productId": product?.id,
      "productName": product?.name,
      "quantity": 1,
      "price": product?.price,
      "totalPrice": product?.price,
    });

    list.add(item);
  } else {
    final quantity = item.value["quantity"] as int;
    final price = item.value["price"] as double;

    item.patchValue({
      "quantity": quantity + 1,
      "totalPrice": (quantity + 1) * price,
    });
  }

  return item as FormGroup;
}

class ProductsInput extends StatelessWidget {
  final FormGroup form;

  const ProductsInput({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddProductAutocomplete(form: form),
        BarcodeScanner(form: form)
      ],
    );
  }
}

class BarcodeScanner extends StatelessWidget {
  const BarcodeScanner({required this.form, super.key});

  final FormGroup form;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrapper(
        child: MobileScanner(
          onDetect: (capture) async {
            // TODO: need to test
            final fetchProductController =
                Get.find<FetchProductByBarcodeController>();

            final barcode = capture.barcodes.last;

            if (barcode.rawValue == null) return;

            final product = await fetchProductController.execute(
                barcode: barcode.rawValue!);

            if (product == null) return;

            await _prepareFormGroupByProductId(form, product.id!);
          },
        ),
      ),
    );
  }
}

class AddProductAutocomplete extends StatelessWidget {
  const AddProductAutocomplete({required this.form, super.key});

  final FormGroup form;

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: AutocompleteInput(
        title: "Product".tr,
        formControlName: "productId",
        afterSelect: (result, control) async {
          // get product id from search input
          final productId = form.value['productId'] as int?;

          // check if product available
          if (productId == null) return;

          // handle adding new product to sale
          await _prepareFormGroupByProductId(form, productId);

          // reset product search input
          control.reset();
        },
        suffixIcon: Obx(() {
          final controller = Get.find<FetchProductByIdController>();

          return controller.isLoading.value
              ? const CircularProgressIndicator()
              : const Icon(Icons.search);
        }),
        suggestionsCallback: (String searchKey) async {
          return await Get.find<SearchProductsController>()
              .execute(searchKey: searchKey);
        },
      ),
    );
  }
}
