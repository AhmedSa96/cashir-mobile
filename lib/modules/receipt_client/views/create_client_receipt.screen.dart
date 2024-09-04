import 'package:cashir/modules/receipt_client/controllers/create_client_receipt.controller.dart';
import 'package:cashir/modules/receipt_client/models/create_client_receipt.model.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/validators/must_be_double.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/date_input.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:cashir/shared/widgets/oprations/add_client_autocomplete.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/utils/configure_date.dart';

class CreateClientReceiptScreen extends StatelessWidget {
  final form = FormGroup({
    "clientId": FormControl<int>(validators: [Validators.required]),
    "amount": FormControl<double>(
      validators: [Validators.required, const MustBeDouble()],
    ),
    "paymentDate": FormControl<DateTime>(
      value: DateTime.now(),
      validators: [Validators.required],
    ),
    "notes": FormControl<String?>()
  });

  CreateClientReceiptScreen({super.key});

  save() async {
    if (form.invalid) {
      Get.find<ToastrService>().warning("ensure that you enter client");
      form.markAllAsTouched();
      return;
    }

    try {
      await Get.find<CreateClientReceiptController>().execute(
        receipt: CreateClientReceipt.fromJson({
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
      title: "Create Client Receipt".tr,
      child: ReactiveForm(
        formGroup: form,
        child: ListView(
          children: [
            ClientIdAutocomplete(label: "No Client".tr),
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
