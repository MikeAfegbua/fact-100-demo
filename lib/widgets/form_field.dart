import 'package:fact_100_demo/core/theme/colors_class.dart';
import 'package:flutter/material.dart';

class GeneralFormField extends StatelessWidget {
  const GeneralFormField({
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
    super.key,
  });

  final String hintText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black,
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'roboto',
          fontSize: 14,
          height: 1,
          fontWeight: FontWeight.w400,
          color: Color(0xff666666),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color(0xff999999), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.primary, width: 1),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        suffixIcon: suffixIcon,
      ),
      cursorColor: Colors.white,
      style: TextStyle(
        fontFamily: 'roboto',
        fontSize: 14,
        height: 1,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      keyboardType: TextInputType.name,
    );
  }
}
