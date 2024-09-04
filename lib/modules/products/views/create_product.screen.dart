import 'package:cashir/modules/products/controllers/create_product.controller.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/models/sale_purches_type.enum.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/barcode_input.widget.dart';
import 'package:cashir/shared/widgets/forms/file_input.widget.dart';
import 'package:cashir/shared/widgets/forms/sale_purchase_type_select.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/validators/must_be_double.dart';

class CreateProductScreen extends StatelessWidget {
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
    // "category_id": FormControl<String>(validators: [Validators.required]),
    "images": FormControl<List<String>>(validators: []),
    "barcode": FormControl<String>(),
    "salePurchesType": FormControl<String>(
      value: SalePurchesType.box.name,
      validators: [Validators.required],
    ),
    "changeQuantityValue": FormControl<int>(
      validators: [Validators.required, Validators.number],
    ),
  });

  final images = FormControl();

  CreateProductScreen({super.key});

  Future<void> createProduct() async {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    try {
      await Get.find<CreateProductController>()
          .excute(Product.fromJson(form.value));

      Get.back();
    } catch (e) {
      // do nothing
      e.printError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Create Product".tr,
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

              // TextInput(title: "category".tr, formControlName: "category_id"),
              const SizedBox(height: 20),
              FileInput(
                label: "images".tr,
                formControl: images,
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
                  onPressed: createProduct,
                  child: Text("Create".tr),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
