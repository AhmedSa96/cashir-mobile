import 'dart:async';
import 'package:cashir/modules/sales/controller/create_sale.controller.dart';
import 'package:cashir/modules/sales/models/sale.model.dart';
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:cashir/shared/widgets/oprations/add_client_autocomplete.widget.dart';
import 'package:cashir/shared/widgets/oprations/product_input.widget.dart';
import 'package:cashir/shared/widgets/oprations/products_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:cashir/shared/layouts/admin.layout.dart';
import 'package:cashir/shared/services/toastr.service.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';

class CreateSaleScreen extends StatefulWidget {
  const CreateSaleScreen({super.key});

  @override
  State<CreateSaleScreen> createState() => _CreateSaleScreenState();
}

class _CreateSaleScreenState extends State<CreateSaleScreen> {
  final form = FormGroup({
    "clientId": FormControl(),
    "notes": FormControl(),
    "paymentAmount": FormControl<double>(value: 0, disabled: true),
    "products": FormArray([], validators: [Validators.minLength(1)]),
    "productId": FormControl(), // for add new product input
  });

  StreamSubscription? sub;

  @override
  void initState() {
    super.initState();

    sub = form.control("clientId").valueChanges.listen((value) {
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
      title: "Add Sale".tr,
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
              child: _CompleteSaleButton(form: form),
            ),
          ],
        ),
      ),
    );
  }
}

class _CompleteSaleButton extends StatelessWidget {
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
                const ClientIdAutocomplete(),
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

    // try {
    await Get.find<CreateSaleController>()
        .execute(sale: Sale.fromJson(form.value));

    Get.back();
    // } catch (e) {
    //   e.printError();
    // }
  }

  const _CompleteSaleButton({required this.form});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductsListTotal(form: form),
        Wrapper(
          child: ElevatedButton(
            onPressed: () => completeSaleInfo(context),
            child: Text("complete sale".tr),
          ),
        )
      ],
    );
  }
}
