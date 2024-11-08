import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:superjara/signup/account_setup.dart';
import 'package:superjara/signup/new_account.dart';

class AccountVerify extends StatefulWidget {
  const AccountVerify({super.key});

  @override
  State<AccountVerify> createState() => _AccountVerifyState();
}

class _AccountVerifyState extends State<AccountVerify> {
  final _otpController = TextEditingController();
  Timer? _timer;
  int _countDown = 30;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countDown > 0) {
          _countDown--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context, (_) {
                      return const NewAccount();
                    });
                  },
                  child: const Icon(Icons.arrow_back)),
              const SizedBox(
                height: 39,
              ),
              const Text(
                "Verify your account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Enter the 6-digit code to sent to you at adedokunpraise@gmail.com",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              PinCodeTextField(
                controller: _otpController,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                appContext: context,
                keyboardType: TextInputType.number,
                length: 6,
                pinTheme: PinTheme(
                  borderRadius: BorderRadius.circular(12),
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                  inactiveColor: const Color(0xffCBD5E1),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const AccountSetUp();
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
                      "Enter",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn’t get a code?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    _countDown == 0 ? 'Resend' : '00 : $_countDown',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7B1085),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
