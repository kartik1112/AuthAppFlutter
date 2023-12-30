import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  const InputTextFieldWidget(
      {required this.controller,
      required this.isPass,
      required this.hint,
      super.key});

  final String hint;
  final bool isPass;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: isPass,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey.shade500),
          hintText: hint,
          filled: true,
          fillColor: Colors.grey.shade200,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
