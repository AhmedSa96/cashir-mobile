import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  final Widget child;
  const Wrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: child,
    );
  }
}
