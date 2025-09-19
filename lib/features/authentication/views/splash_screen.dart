import 'package:fact_100_demo/features/authentication/views/onboarding_screen.dart';
import 'package:fact_100_demo/gen/assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? result;

  @override
  void initState() {
    super.initState();

    navigateAfterDelay();
  }

  void navigateAfterDelay() {
    Future.delayed(Duration(seconds: 3), () async {
      if (mounted) {
        result =
            await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return OnboardingScreen(title: 'Welcome to Scholarly');
                    },
                  ),
                )
                as String?;

        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    if (kDebugMode) {
      print('Disposing SplashScreen');
    }

    debugPrint('SplashScreen disposed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff4BCDE7), Color(0xff0C4D5A)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.ASSETS_IMAGES_GEOGRAPHY_PNG,
                height: 96,
                width: 96,
              ),
              SizedBox(height: 12),
              Text(
                result ?? 'FACT100',
                style: TextStyle(
                  fontFamily: 'rockwell',
                  fontSize: 34,
                  height: 35.5 / 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE8F9FC),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
