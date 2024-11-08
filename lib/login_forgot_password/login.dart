import 'package:flutter/material.dart';
import 'package:superjara/login_forgot_password/login_input_section.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xfff7f7f7),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
                child: SingleChildScrollView(
                  child: Column(children: [
                    LoginInputSection(),
                  ]),
                ))));
  }
}
