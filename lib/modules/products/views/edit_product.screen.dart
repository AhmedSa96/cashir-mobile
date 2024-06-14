import 'dart:typed_data';

import 'package:cashir/modules/products/controllers/fetch_product_by_id.controller.dart';
import 'package:cashir/modules/products/controllers/update_product.controller.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/barcode_input.widget.dart';
import 'package:cashir/shared/widgets/forms/file_input.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/models/sale_purches_type.enum.dart';
import '../../../shared/validators/must_be_double.dart';
import '../../../shared/widgets/forms/sale_purchase_type_select.widget.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key});

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final form = FormGroup({
    'name': FormControl<String>(validators: [Validators.required]),
    "description": FormControl<String>(validators: [Validators.required]),
    "price": FormControl<double>(
      value: 0,
      validators: [
        Validators.required,
        const MustBeDouble(),
      ],
    ),
    "quantity": FormControl<int>(
      value: 0,
      validators: [Validators.required, Validators.number],
    ),
    "category_id": FormControl<String>(),
    "image": FormControl<List<Uint8List>>(),
    "barcode": FormControl<String>(),
    "salePurchesType": FormControl<String>(
      value: SalePurchesType.box.name,
      validators: [Validators.required],
    ),
    "changeQuantityValue": FormControl<int>(
      validators: [Validators.required, Validators.number],
    ),
  });

  @override
  void initState() {
    super.initState();

    final controller = Get.find<FetchProductByIdController>();
    controller
        .fetch(id: int.parse(Get.parameters['id'] as String))
        .then((success) {
      if (!success || controller.isLoading.value) return;

      form.patchValue(controller.product?.value.toJson());
    });
  }

  void editProduct() {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    try {
      Get.find<UpdateProductController>().execute(
        Product.fromJson({
          ...form.value,
          "id": int.parse(Get.parameters['id'] as String),
        }),
      );

      Get.back();
    } catch (e) {
      e.printError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Edit Product".trParams({"id": Get.parameters['id']!}),
      showBottomBar: false,
      child: Wrapper(
        child: ReactiveForm(
          formGroup: form,
          child: ListView(
            children: [
              TextInput(title: "name".tr, formControlName: "name"),
              const SizedBox(height: 20),
              TextInput(
                  title: "description".tr, formControlName: "description"),
              const SizedBox(height: 20),
              TextInput(
                title: "price".tr,
                formControlName: "price",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              FileInput(
                label: "image".tr,
                formControlName: "image",
                isMultiple: true,
              ),
              const SizedBox(height: 20),
              BarcodeInput(title: "bar code".tr, formControlName: "barcode"),
              const SizedBox(height: 20),
              SalePurchaseTypeSelect(
                  title: "sale purchase type".tr,
                  formControlName: "salePurchesType"),
              const SizedBox(height: 20),
              TextInput(
                formControlName: "changeQuantityValue",
                title: "quantity change value".tr,
              ),
              const SizedBox(height: 20),
              TextInput(
                title: "stock".tr,
                formControlName: "quantity",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: editProduct,
                  child: Text("Save".tr),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
