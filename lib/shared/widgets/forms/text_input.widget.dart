import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TextInput extends StatelessWidget {
  final String title;
  final String formControlName;
  final bool isSecure;
  final Widget? suffixIcon;
  final int? lines;

  final TextInputType? keyboardType;

  const TextInput({
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
        ReactiveTextField(
          formControlName: formControlName,
          keyboardType: keyboardType,
          obscureText: isSecure,
          onTap: (control) => control.reset(),
          minLines: lines ?? 1,
          maxLines: lines ?? 1,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            suffixIcon: suffixIcon,
          ),
        )
      ],
    );
  }
}
