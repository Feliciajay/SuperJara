import 'package:flutter/material.dart';
import 'package:superjara/login_forgot_password/enter_code.dart';

class EmailTemplate extends StatefulWidget {
  const EmailTemplate({super.key});

  @override
  State<EmailTemplate> createState() => _EmailTemplateState();
}

class _EmailTemplateState extends State<EmailTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const EnterCode();
                }));
              },
              child: const Text(
                "Email Template",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      )),
    );
  }
}
