import 'package:fact_100_demo/core/theme/colors_class.dart';
import 'package:fact_100_demo/gen/assets.dart';
import 'package:fact_100_demo/widgets/buttons.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AppAssets.ASSETS_IMAGES_GEOGRAPHY_PNG,
                  height: 36,
                  width: 36,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(height: 5),
              Center(
                child: Text(
                  'FACT100',
                  style: TextStyle(
                    fontFamily: 'rockwell',
                    fontSize: 12,
                    height: 14.5 / 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),
              SizedBox(height: 80),
              Text(
                'Create an account',
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 20,
                  height: 1,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffE8F9FC),
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 16),
              Text(
                'Enter your details below to get started',
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 14,
                  height: 1,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffCCCCCC),
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 40),

              Expanded(
                child: ListView(
                  children: [
                    GeneralFormField(
                      hintText: 'Name',
                      controller: TextEditingController(),
                    ),
                    SizedBox(height: 16),
                    GeneralFormField(
                      hintText: 'Email',
                      controller: TextEditingController(),
                    ),
                    SizedBox(height: 16),
                    GeneralFormField(
                      hintText: 'Password',
                      controller: TextEditingController(),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Color(0xff666666),
                      ),
                    ),
                    SizedBox(height: 16),
                    GeneralFormField(
                      hintText: 'Verify Password',
                      controller: TextEditingController(),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Color(0xff666666),
                      ),
                    ),
                    SizedBox(height: 48),
                    GeneralButton(
                      buttonText: 'Sign up',
                      backgroundColor: Color(0xff1BB0CE),
                      textColor: Colors.black,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
