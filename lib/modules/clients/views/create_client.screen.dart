import 'package:cashir/modules/clients/controllers/create_client.controller.dart';
import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateClientScreen extends StatelessWidget {
  final form = FormGroup({
    "name": FormControl(validators: [Validators.required]),
    "phone": FormControl(validators: []),
    "address": FormControl(validators: []),
    "prevAmount": FormControl(),
  });

  CreateClientScreen({super.key});

  Future<void> createClient() async {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    try {
      await Get.find<CreateClientController>()
          .execute(client: ClientModel.fromJson(form.value));
    } catch (e) {
      e.printError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Create Client".tr,
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
                title: "previous amount".tr,
                formControlName: "prevAmount",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: createClient,
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
