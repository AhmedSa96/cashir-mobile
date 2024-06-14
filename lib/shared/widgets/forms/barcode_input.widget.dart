import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:reactive_forms/reactive_forms.dart';

class BarcodeInput extends StatelessWidget {
  final String title;
  final String formControlName;

  const BarcodeInput({
    required this.title,
    required this.formControlName,
    super.key,
  });

  scan(FormControl<String> control) {
    Get.to(
      BarcodeScannerSingleValue(
        onScan: (value) {
          control.value = value;
          control.markAsDirty();
          Get.back();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        ReactiveTextField(
          onTap: scan,
          readOnly: true,
          formControlName: formControlName,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.qr_code),
          ),
        )
      ],
    );
  }
}

class BarcodeScannerSingleValue extends StatelessWidget {
  final void Function(String) onScan;

  const BarcodeScannerSingleValue({required this.onScan, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        onDetect: (capture) {
          final barcode = capture.barcodes.first;

          if (barcode.rawValue == null) return;

          onScan(barcode.rawValue!);

          Get.back();
        },
      ),
    );
  }
}
