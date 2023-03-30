import 'package:flutter/material.dart';

class Child extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const Child(this.onChanged, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) => onChanged(text),
    );
  }
}
