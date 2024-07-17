import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class CreateEmail extends StatefulWidget {
  const CreateEmail({super.key});

  @override
  State<CreateEmail> createState() => _CreateEmailState();
}

class _CreateEmailState extends State<CreateEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context, (_) {
                      return const MoreScreen();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Text(
                  "Create Email",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                'Email Address',
                style: AppTextStyles.font14
                    .copyWith(color: const Color(0xff475569)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 350,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: const Color(0XFFCBD5E1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '',
                      hintStyle: AppTextStyles.font12,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text(
                'Domain',
                style: AppTextStyles.font14
                    .copyWith(color: const Color(0xff475569)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 350,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: const Color(0XFFCBD5E1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '',
                      hintStyle: AppTextStyles.font12,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text(
                'Password',
                style: AppTextStyles.font14
                    .copyWith(color: const Color(0xff475569)),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 350,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: const Color(0XFFCBD5E1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '',
                      hintStyle: AppTextStyles.font12,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text(
                "Verify Password",
                style: AppTextStyles.font14,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 350,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: const Color(0XFFCBD5E1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: '',
                      hintStyle: AppTextStyles.font12,
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            const SizedBox(
              height: 49,
            ),
            Container(
              height: 48,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xff000078),
              ),
              child: Center(
                child: Text(
                  'Create Email',
                  style: AppTextStyles.font16
                      .copyWith(color: const Color(0XFFFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
