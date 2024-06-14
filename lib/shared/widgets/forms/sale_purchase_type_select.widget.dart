import 'package:cashir/shared/models/sale_purches_type.enum.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// package
/// unit
/// large packet
/// kilogram

class SalePurchaseTypeSelect extends StatelessWidget {
  final String title;
  final String formControlName;
  final bool isSecure;
  final Widget? suffixIcon;
  final int? lines;

  final TextInputType? keyboardType;

  const SalePurchaseTypeSelect({
    required this.title,
    required this.formControlName,
    this.isSecure = false,
    this.keyboardType,
    this.suffixIcon,
    this.lines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        ReactiveDropdownField(
          formControlName: formControlName,
          decoration: const InputDecoration(border: OutlineInputBorder()),
          items: [
            DropdownMenuItem(
              value: SalePurchesType.box.name,
              child: Text("Box to units".tr),
            ),
            DropdownMenuItem(
              value: SalePurchesType.kilogram.name,
              child: Text("Kilogram".tr),
            ),
          ],
        ),
      ],
    );
  }
}
