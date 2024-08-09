import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final bool isMandatory;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
    this.isMandatory = false, 
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: isMandatory
            ? '$labelText *' 
            : labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          color: Colors.black, 
        ),
        hintStyle: const TextStyle(
          color: Colors.grey, 
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.blue), 
        ),
      ),
    );
  }
}
