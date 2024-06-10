import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const TextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller, hintText: hintText, obscureText: obscureText);
  }
}
