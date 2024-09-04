import 'package:cashir/modules/suppliers/controllers/fetch_supplier_by_id.controller.dart';
import 'package:cashir/modules/suppliers/controllers/update_supplier.controller.dart';
import 'package:cashir/modules/suppliers/models/supplier.model.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EditSupplierScreen extends StatefulWidget {
  const EditSupplierScreen({super.key});

  @override
  State<EditSupplierScreen> createState() => _EditSupplierScreenState();
}

class _EditSupplierScreenState extends State<EditSupplierScreen> {
  final form = FormGroup({
    "name": FormControl(validators: [Validators.required]),
    "phone": FormControl(validators: []),
    "address": FormControl(validators: []),
    "prevAmount": FormControl<double>(value: 0),
  });

  Future<void> editSupplier() async {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    await Get.find<UpdateSupplierController>().execute(
      id: int.parse(Get.parameters['id'] as String),
      supplier: SupplierModel.fromJson(form.value),
    );
  }

  @override
  void initState() {
    super.initState();

    Get.find<FetchSupplierByIdController>()
        .execute(id: int.parse(Get.parameters["id"] as String))
        .then((supplier) {
      form.patchValue(supplier?.toJson() ?? {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Edit Supplier".trParams({"id": Get.parameters["id"]!}),
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
                  onPressed: editSupplier,
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
