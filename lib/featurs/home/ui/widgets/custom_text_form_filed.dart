import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String text;
  final String? hintText;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color? hintStyle;
  final TextEditingController? controller;
  const CustomTextFormFiled(
      {super.key,
      required this.text,
       this.prefixIcon,
      this.hintText,
      this.keyboardType,
      this.suffixIcon,
      this.obscureText = false,
      this.hintStyle,
      required this.controller
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: (value) {
        if (value!.isEmpty || value == '') {
          return 'please set value';
        }
        return null;
      },
      decoration: InputDecoration(
        label: Text(
          text,
        ),
        labelStyle: TextStyle(color: hintStyle),
        hintText: hintText ?? 'Typing...',
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.green)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.green, width: 2.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
