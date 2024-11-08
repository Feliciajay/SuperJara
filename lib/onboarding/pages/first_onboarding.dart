import 'package:flutter/material.dart';
import 'package:superjara/const/app_images.dart';

class FirstOnboardingPage extends StatelessWidget {
  const FirstOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 327,
          width: 350,
          child: Image.asset(AppImages.image1images),
        ),
        const SizedBox(
          height: 84,
        ),
        const Text(
          "Airtime & Data Top Up",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0XFF000000)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Recharge at affordable rate and get instant data activation while using your Superjara App",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xff333333),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 72,
        ),
      ],
    );
  }
}
