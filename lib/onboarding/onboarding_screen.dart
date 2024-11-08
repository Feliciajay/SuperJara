import 'package:flutter/material.dart';
import 'package:superjara/login_forgot_password/login.dart';
import 'package:superjara/onboarding/pages/first_onboarding.dart';
import 'package:superjara/onboarding/pages/second_onboarding.dart';
import 'package:superjara/onboarding/pages/third_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:superjara/signup/new_account.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: const [
                FirstOnboardingPage(),
                SecondOnboardingPage(),
                ThirdOnboardingPage(),
              ],
            ),
            Positioned(
              bottom: 400,
              // top: 140,
              left: 180,
              child: Container(
                height: 16,
                width: 51,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF2F2F2),
                ),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(dotHeight: 6, dotWidth: 6),
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 25,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const NewAccount();
                      }));
                    },
                    child: Container(
                      height: 53,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff000078),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffffffff)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const LoginPage();
                      }));
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000078)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
