import 'package:cashir/shared/utils/configure_date.dart';
import 'package:cashir/shared/widgets/common/wrapper.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/constants/colors.dart' as colors;
import '../forms/date_input.widget.dart';

void showFiltersSheet({
  required BuildContext context,
  required FormGroup form,
  required List<Widget> children,
  required void Function(Map<String, dynamic>) onApply,
  required void Function(Map<String, dynamic>) onReset,
}) {
  showBottomSheet(
    context: context,
    builder: (context) {
      final size = MediaQuery.of(context).size;
      return ReactiveForm(
        formGroup: form,
        child: Container(
          height: size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(50),
            boxShadow: const [BoxShadow()],
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: size.width,
                decoration: const BoxDecoration(color: colors.primary),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        "Filters".tr,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(width: 50),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ...children,
              Wrapper(
                child: DateInput(
                    title: "From Date".tr, formControlName: "fromDate"),
              ),
              const SizedBox(height: 20),
              Wrapper(
                child:
                    DateInput(title: "To Date".tr, formControlName: "toDate"),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => onReset({
                      "fromDate": DateTime.now().copyWith(day: 1),
                      "toDate": DateTime.now(),
                    }),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                    child: Text(
                      "Reset".tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => onApply({
                      "fromDate": configureDate(form.control("fromDate").value),
                      "toDate": configureDate(form.control("toDate").value),
                    }),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(colors.primary),
                    ),
                    child: Text(
                      "Apply".tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
