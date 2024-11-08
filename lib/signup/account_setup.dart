import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/signup/username.dart';

class AccountSetUp extends StatefulWidget {
  const AccountSetUp({super.key});

  @override
  State<AccountSetUp> createState() => _AccountSetUpState();
}

class _AccountSetUpState extends State<AccountSetUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Set up your account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)),
              ),
              const Text(
                "Fill the details below",
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
                "First Name",
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
                "Last Name",
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
                "Phone Number",
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
                height: 20,
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
                height: 8,
              ),
              const Text(
                "Confirm Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff475569),
                ),
              ),
              const SizedBox(
                height: 20,
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
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "By signing up you agree with our",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " Terms of Service ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7B1085),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Privacy Policy ",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7B1085),
                    ),
                  ),
                  Text(
                    "and",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " Cookies Policy",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7B1085),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const UserName();
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
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
