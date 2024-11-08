import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/signup/new_account_verify.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              "Welcome To SuperJara",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000)),
            ),
            const Text(
              "Create an account",
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
              "Phone Number/Email Address",
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
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const AccountVerify()));
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
                    "Continue",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffffffff)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 307,
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
        ),
      )),
    );
  }
}
