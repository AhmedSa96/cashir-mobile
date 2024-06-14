import 'dart:collection';

import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:cashir/shared/constants/colors.dart' as app_colors;
import 'package:cashir/shared/widgets/forms/text_input.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProductsList extends StatelessWidget {
  final FormGroup form;

  const ProductsList({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: form.controls["products"]!.valueChanges,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();

        final list = (form.controls["products"] as FormArray).value;

        return ListView.builder(
          itemCount: list?.length ?? 0,
          itemBuilder: (context, index) {
            final item = list![index] as UnmodifiableMapView<String, Object?>;

            return ProductsListItem(
              form: form,
              product: Map.from(item),
              index: index,
            );
          },
        );
      },
    );
  }
}

class ProductsListItem extends StatelessWidget {
  final Map<String, dynamic> product;
  final FormGroup form;
  final int index;

  const ProductsListItem(
      {required this.form,
      required this.product,
      required this.index,
      super.key});

  deleteItem() {
    final list = (form.controls["products"] as FormArray);

    list.removeAt(index);
  }

  quantityIncrement() {
    final list = (form.controls["products"] as FormArray);
    final item = list.controls[index];

    final newQuantity = item.value["quantity"] + 1;
    final totalPrice = newQuantity * item.value["price"];
    item.patchValue({"quantity": newQuantity, "totalPrice": totalPrice});
  }

  quantityDecrement() {
    final list = (form.controls["products"] as FormArray);
    final item = list.controls[index];

    if (item.value["quantity"] == 1) {
      deleteItem();
      return;
    }

    final newQuantity = item.value["quantity"] - 1;
    final totalPrice = newQuantity * item.value["price"];
    item.patchValue({"quantity": newQuantity, "totalPrice": totalPrice});
  }

  showProductSettings(
    BuildContext context,
    FormGroup formItem,
  ) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: ReactiveForm(
          formGroup: formItem,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StreamBuilder(
                stream: formItem.control("quantity").valueChanges,
                builder: (context, snapshot) {
                  final quantity = snapshot.data;

                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: quantityDecrement,
                        icon: const Icon(Icons.remove),
                      ),
                      Text(
                        quantity?.toString() ??
                            product["quantity"]?.toString() ??
                            "N/A".tr,
                        style: const TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        onPressed: quantityIncrement,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              TextInput(
                title: "unit price".tr,
                formControlName: "price",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              TextInput(
                title: "total price".tr,
                formControlName: "totalPrice",
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final list = (form.controls["products"] as FormArray);
    final formItem = list.controls[index] as FormGroup;
    return Wrapper(
      child: Card(
        child: ListTile(
            title: Text(product['productName']),
            subtitle: Row(children: [
              Text("Price : ".tr),
              Text(
                product["price"]?.toString() ?? "N/A".tr,
                style: const TextStyle(fontSize: 18),
              ),
              Text(", Quantity : ".tr),
              Text(
                product["quantity"]?.toString() ?? "N/A".tr,
                style: const TextStyle(fontSize: 18),
              ),
            ]),
            trailing: IconButton(
                onPressed: () => showProductSettings(context, formItem),
                icon: const Icon(
                  Icons.settings,
                  color: app_colors.primary,
                ))
            // Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     IconButton(
            //       onPressed: quantityDecrement,
            //       icon: const Icon(Icons.remove),
            //     ),
            //     Text(
            //       product["quantity"]?.toString() ?? "N/A".tr,
            //       style: const TextStyle(fontSize: 18),
            //     ),
            //     IconButton(
            //       onPressed: quantityIncrement,
            //       icon: const Icon(Icons.add),
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}

num getTotal({required FormGroup form}) {
  final list = (form.controls["products"] as FormArray).value;

  return (list?.isEmpty ?? true)
      ? 0
      : list
              ?.map<num>((e) => (e["price"] ?? 0) * (e["quantity"] ?? 0))
              .reduce((value, element) => value += element) ??
          0;
}

class ProductsListTotal extends StatelessWidget {
  final FormGroup form;
  const ProductsListTotal({required this.form, super.key});

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total".tr),
          StreamBuilder(
            stream: form.controls["products"]!.valueChanges,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();

              return Text(getTotal(form: form).toString());
            },
          ),
        ],
      ),
    );
  }
}
