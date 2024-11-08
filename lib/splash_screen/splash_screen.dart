import 'package:flutter/material.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingPage()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 57,
          width: 194,
          child: Image.asset(AppImages.splashimages),
        ),
      ),
    );
  }
}
