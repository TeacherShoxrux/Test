import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.labelText, required this.hintText, this.controller, this.obsecure = false, this.onChanged});
  final String labelText;
  final String hintText;
  final bool obsecure;
  final Function(String value)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        obscureText: obsecure,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText
        ),
      ),
    );
  }


}
