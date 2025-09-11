import 'package:fact_100_demo/gen/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                'FACT100',
                style: TextStyle(
                  fontFamily: 'rockwell',
                  fontSize: 34,
                  height: 35.5 / 34,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE8F9FC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
