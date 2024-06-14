import 'package:flutter/material.dart';

class ShortDescription extends StatelessWidget {
  final String text;
  final int maxChars;

  const ShortDescription({required this.text, this.maxChars = 20, super.key});

  String _makeText() {
    if (text.length <= maxChars) return text;

    return "${text.substring(0, maxChars)} ...";
  }

  @override
  Widget build(BuildContext context) {
    return Text(_makeText());
  }
}
