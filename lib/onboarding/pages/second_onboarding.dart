import 'package:flutter/material.dart';
import 'package:superjara/const/app_images.dart';

class SecondOnboardingPage extends StatefulWidget {
  const SecondOnboardingPage({super.key});

  @override
  State<SecondOnboardingPage> createState() => _SecondOnboardingPageState();
}

class _SecondOnboardingPageState extends State<SecondOnboardingPage> {
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
          child: Image.asset(AppImages.ladyimages),
        ),
        const SizedBox(
          height: 84,
        ),
        const Text(
          "Educational Payment",
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
            "Pay less for your WAEC, NECO, JAMB, IELTS ans others on your Superjara App",
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
