import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData icon;
  final TextInputType? keyboardType;
  final String label;
  final FormFieldValidator<String>? validator;


  const CustomTextField({
    Key? key,
    this.controller,
    required this.icon,
    this.keyboardType,
    required this.label,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        decoration:  InputDecoration(
          label: Text(label),
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
