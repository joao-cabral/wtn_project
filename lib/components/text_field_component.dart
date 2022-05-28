import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent(
      {Key? key,
      required this.controller,
      required this.label,
      required this.validator,
      this.maxLines,
      this.types})
      : super(key: key);

  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final int? maxLines;
  final TextInputType? types;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        fontSize: 16,
        color: Color(0xff403131),
      ),
      decoration: InputDecoration(
        hintText: label,
        border: InputBorder.none,
      ),
      maxLines: maxLines,
      keyboardType: types,
      validator: validator,
    );
  }
}
