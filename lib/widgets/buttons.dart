import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    this.borderColor = const Color(0xff1BB0CE),
    super.key,
  });

  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: borderColor, width: 1),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontFamily: 'roboto',
            fontSize: 16,
            height: 1,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
