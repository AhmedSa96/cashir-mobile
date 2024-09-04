import 'dart:async';
import 'package:cashir/modules/purcheses/controller/create_purches.controller.dart';
import 'package:cashir/modules/purcheses/models/purches.model.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:cashir/shared/widgets/oprations/add_supplier_autocomplete.widget.dart';
import 'package:cashir/shared/widgets/oprations/product_input.widget.dart';
import 'package:cashir/shared/widgets/oprations/products_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';

class CreatePurchesScreen extends StatefulWidget {
  const CreatePurchesScreen({super.key});

  @override
  State<CreatePurchesScreen> createState() => _CreatePurchesScreenState();
}

class _CreatePurchesScreenState extends State<CreatePurchesScreen> {
  final form = FormGroup({
    "supplierId": FormControl(),
    "notes": FormControl(),
    "paymentAmount": FormControl<double>(value: 0, disabled: true),
    "products": FormArray([], validators: [Validators.minLength(1)]),
    "productId": FormControl(), // for add new product input
  });

  StreamSubscription? sub;

  @override
  void initState() {
    super.initState();

    sub = form.control("supplierId").valueChanges.listen((value) {
      final paymentControl = form.control("paymentAmount") as FormControl;
      if (value == null) {
        paymentControl.markAsDisabled();
      } else {
        paymentControl.markAsEnabled();
      }
    });
  }

  @override
  void dispose() {
    sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdminLayout(
      title: "Add Purches".tr,
      child: ReactiveForm(
        formGroup: form,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: ProductsInput(form: form),
            ),
            const Divider(),
            Expanded(
              flex: 4,
              child: ProductsList(form: form),
            ),
            const Divider(),
            Expanded(
              flex: 2,
              child: _CompletePurchesButton(form: form),
            ),
          ],
        ),
      ),
    );
  }
}

class _CompletePurchesButton extends StatelessWidget {
  final FormGroup form;

  completeSaleInfo(BuildContext context) async {
    if (form.invalid) {
      form.markAllAsTouched();
      Get.find<ToastrService>().warning("you must add at least 1 product".tr);
      return;
    }

    if (form.value["clientId"] == null) {
      form.patchValue({"paymentAmount": getTotal(form: form)});
    }

    showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ReactiveForm(
            formGroup: form,
            child: Column(
              children: [
                const SupplierIdAutocomplete(),
                Wrapper(
                  child: TextInput(
                    title: "paid price".tr,
                    keyboardType: TextInputType.number,
                    formControlName: "paymentAmount",
                    suffixIcon: TextButton(
                      onPressed: () => form
                          .patchValue({"paymentAmount": getTotal(form: form)}),
                      child: Text("max".tr),
                    ),
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
      },
    );
  }

  save() async {
    final total = getTotal(form: form);

    final isDisabled = form.control("paymentAmount").disabled;

    if (isDisabled) form.control("paymentAmount").markAsEnabled();

    final payment = form.value["paymentAmount"] as num;

    if (payment > total) {
      Get.find<ToastrService>()
          .error("you must pay less or equal the total price".tr);
      return;
    }

    try {
      await Get.find<CreatePurchesController>()
          .execute(purches: Purches.fromJson(form.value));

      Get.back();
    } catch (e) {
      Get.find<ToastrService>().error("we got something wrong".tr);
    }
  }

  const _CompletePurchesButton({required this.form});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductsListTotal(form: form),
        Wrapper(
          child: ElevatedButton(
            onPressed: () => completeSaleInfo(context),
            child: Text("Complete Purches".tr),
          ),
        )
      ],
    );
  }
}
