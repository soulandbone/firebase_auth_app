import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscuredText;

  const MyTextField(
      {required this.hintText,
      required this.controller,
      required this.obscuredText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obscuredText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500]),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400))));
  }
}
