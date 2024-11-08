import 'package:flutter/material.dart';
import 'package:superjara/bottom%20nav/bottom_nav.dart';

import 'package:superjara/login_forgot_password/reset_password.dart';

class LoginInputSection extends StatelessWidget {
  const LoginInputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xff000000)),
        ),
        const Text(
          "Let’s get you back to the easy life",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff333333),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "User Name",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff475569),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: 350,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabled: true,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Password",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xff475569),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: 350,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              enabled: true,
              suffixIcon: Icon(
                Icons.remove_red_eye,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return const ResetPassword();
            }));
          },
          child: const Text(
            "Forgot your password?",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff7B1085)),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 53,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff000078),
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const BottomNav();
                }));
              },
              child: const Text(
                "Login",
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
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fingerprint),
            SizedBox(
              width: 4,
            ),
            Text(
              "Click to login with fingerprint",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000078)),
            ),
          ],
        ),
        const SizedBox(
          height: 121,
        ),
        Container(
          height: 54,
          width: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(88),
            color: const Color(0xff000078),
          ),
          margin: const EdgeInsets.only(left: 300),
          child: const Icon(
            Icons.messenger_outline,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New to Superjara?",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              " Sign up here",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff7B1085),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
