import 'package:cashir/modules/clients/controllers/fetch_client_by_id.controller.dart';
import 'package:cashir/modules/clients/controllers/update_client.controller.dart';
import 'package:cashir/modules/clients/models/client.model.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EditClientScreen extends StatefulWidget {
  const EditClientScreen({super.key});

  @override
  State<EditClientScreen> createState() => _EditClientScreenState();
}

class _EditClientScreenState extends State<EditClientScreen> {
  final form = FormGroup({
    "name": FormControl(validators: [Validators.required]),
    "phone": FormControl(validators: []),
    "address": FormControl(validators: []),
    "prevAmount": FormControl<double>(value: 0),
  });

  Future<void> editClient() async {
    if (form.invalid) {
      form.markAllAsTouched();
      return;
    }

    await Get.find<UpdateClientController>().execute(
      id: int.parse(Get.parameters['id'] as String),
      client: ClientModel.fromJson(form.value),
    );
  }

  @override
  void initState() {
    super.initState();

    final controller = Get.find<FetchClientByIdController>();
    controller
        .execute(id: int.parse(Get.parameters['id'] as String))
        .then((success) {
      if (controller.isLoading.value) return;

      form.patchValue(controller.client?.value.toJson());
    });
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Edit Client".trParams({"id": Get.parameters["id"]!}),
      showBottomBar: false,
      child: Wrapper(
        child: ReactiveForm(
          formGroup: form,
          child: ListView(
            children: [
              TextInput(title: "name".tr, formControlName: "name"),
              const SizedBox(height: 20),
              TextInput(title: "phone".tr, formControlName: "phone"),
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
                  onPressed: editClient,
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
