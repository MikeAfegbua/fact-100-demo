import 'package:fact_100_demo/core/theme/colors_class.dart';
import 'package:fact_100_demo/gen/assets.dart';
import 'package:fact_100_demo/widgets/buttons.dart';
import 'package:fact_100_demo/widgets/form_field.dart';
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
                  shrinkWrap: true,
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
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
