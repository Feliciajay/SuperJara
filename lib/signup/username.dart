import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

//import 'package:superjara/bottom%20nav/bottom_nav.dart';
import 'package:superjara/signup/account_setup.dart';
import 'package:superjara/signup/transaction.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
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
                    return const AccountSetUp();
                  });
                },
                child: const Icon(Icons.arrow_back)),
            const SizedBox(
              height: 39,
            ),
            const Text(
              "Create username",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
              "You can sign in with this username and you will be addressed by this username when using the Superjara app",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Username",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
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
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const Transactions();
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
                    "Set username",
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
      )),
    );
  }
}
