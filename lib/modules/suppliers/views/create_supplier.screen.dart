import 'package:cashir/modules/suppliers/controllers/create_supplier.controller.dart';
import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateSupplierScreen extends StatelessWidget {
  final form = FormGroup({
    "name": FormControl(validators: [Validators.required]),
    "phone": FormControl(validators: []),
    "address": FormControl(validators: []),
    "prevAmount": FormControl(),
  });

  CreateSupplierScreen({super.key});

  Future<void> createSupplier() async {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    await Get.find<CreateSupplierController>()
        .execute(supplierModel: SupplierModel.fromJson(form.value));
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Create Supplier".tr,
      showBottomBar: false,
      child: Wrapper(
        child: ReactiveForm(
          formGroup: form,
          child: ListView(
            children: [
              TextInput(title: "name".tr, formControlName: "name"),
              const SizedBox(height: 20),
              TextInput(title: "Phone".tr, formControlName: "phone"),
              const SizedBox(height: 20),
              TextInput(title: "address".tr, formControlName: "address"),
              const SizedBox(height: 20),
              TextInput(
                  title: "previous amount".tr, formControlName: "prevAmount"),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: createSupplier,
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
