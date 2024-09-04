import 'package:cashir/modules/receipt-supplier/controllers/create_supplier_receipt.controller.dart';
import 'package:cashir/modules/receipt-supplier/models/create_supplier_receipt.model.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/utils/configure_date.dart';
import 'package:cashir/shared/validators/must_be_double.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:cashir/shared/widgets/oprations/add_supplier_autocomplete.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/widgets/forms/date_input.widget.dart';

class CreateSupplierReceiptScreen extends StatelessWidget {
  final form = FormGroup({
    "supplierId": FormControl<int>(validators: [Validators.required]),
    "amount": FormControl<double>(
      validators: [Validators.required, const MustBeDouble()],
    ),
    "paymentDate": FormControl<DateTime>(
      value: DateTime.now(),
      validators: [Validators.required],
    ),
    "notes": FormControl<String?>()
  });

  CreateSupplierReceiptScreen({super.key});

  save() async {
    if (form.invalid) {
      Get.find<ToastrService>().warning("ensure that you enter supplier");
      form.markAllAsTouched();
      return;
    }

    try {
      await Get.find<CreateSupplierReceiptController>().execute(
        receipt: CreateSupplierReceipt.fromJson({
          ...form.value,
          "paymentDate": configureDate(form.control("paymentDate").value),
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
      title: "Create Supplier Receipt".tr,
      child: ReactiveForm(
        formGroup: form,
        child: ListView(
          children: [
            SupplierIdAutocomplete(label: "No Supplier".tr),
            Wrapper(
              child: TextInput(
                title: "Payment Amount".tr,
                formControlName: "amount",
                keyboardType: TextInputType.number,
              ),
            ),
            Wrapper(
              child: DateInput(
                title: "Payment Date".tr,
                formControlName: "paymentDate",
              ),
            ),
            Wrapper(
              child: TextInput(
                title: "Notes".tr,
                formControlName: "notes",
                lines: 4,
              ),
            ),
            Wrapper(
              child: ElevatedButton(
                onPressed: save,
                child: Text("Save".tr),
              ),
            )
          ],
        ),
      ),
    );
  }
}
