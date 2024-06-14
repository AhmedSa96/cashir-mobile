import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DateInput extends StatelessWidget {
  final String title;
  final String formControlName;

  const DateInput({
    required this.title,
    required this.formControlName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const SizedBox(height: 8),
        ReactiveDatePicker(
          formControlName: formControlName,
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          fieldHintText: title,
          builder: (context, picker, child) {
            // text field with selected date, and date picker
            return InkWell(
              onTap: picker.showPicker,
              child: IgnorePointer(
                child: ReactiveTextField(
                  formControlName: formControlName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.date_range),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
