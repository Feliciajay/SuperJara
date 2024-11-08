import 'package:flutter/material.dart';

import 'package:superjara/const/app_images.dart';

class ThirdOnboardingPage extends StatefulWidget {
  const ThirdOnboardingPage({super.key});

  @override
  State<ThirdOnboardingPage> createState() => _ThirdOnboardingPageState();
}

class _ThirdOnboardingPageState extends State<ThirdOnboardingPage> {
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
          child: Image.asset(AppImages.womanimages),
        ),
        const SizedBox(
          height: 84,
        ),
        const Text(
          "Bills Payment",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0XFF000000)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Get all your bills sorted with no BANK CHARGES on the Superjara App ",
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
