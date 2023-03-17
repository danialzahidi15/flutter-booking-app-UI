import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(label),
          border: InputBorder.none,
        ),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}