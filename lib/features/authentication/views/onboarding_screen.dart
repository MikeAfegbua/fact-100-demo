import 'package:fact_100_demo/features/authentication/views/create_account_screen.dart';
import 'package:fact_100_demo/gen/assets.dart';
import 'package:fact_100_demo/widgets/buttons.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.ASSETS_IMAGES_ONBOARDING_PNG,
              height: 323,
              width: 328,
            ),
            SizedBox(height: 64),
            Text(
              'Welcome to Fact100',
              style: TextStyle(
                fontFamily: 'roboto',
                fontSize: 20,
                height: 1,
                fontWeight: FontWeight.w600,
                color: Color(0xffE8F9FC),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Your guide to verifying news and uncovering the truth',
              style: TextStyle(
                fontFamily: 'roboto',
                fontSize: 16,
                height: 1,
                fontWeight: FontWeight.w400,
                color: Color(0xffCCCCCC),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            GeneralButton(
              buttonText: 'Create an account',
              backgroundColor: Color(0xff1BB0CE),
              textColor: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CreateAccountScreen();
                    },
                  ),
                );
              },
            ),

            SizedBox(height: 20),

            GeneralButton(
              buttonText: 'Login',
              backgroundColor: Colors.black,
              textColor: Color(0xff1BB0CE),
              onPressed: () {
                debugPrint('login screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
