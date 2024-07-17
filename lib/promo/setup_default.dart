import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class SetupDefault extends StatefulWidget {
  const SetupDefault({super.key});

  @override
  State<SetupDefault> createState() => _SetupDefaultState();
}

class _SetupDefaultState extends State<SetupDefault> {
  List<String> setUpItems = [
    'Select bonus option',
    'Default Referral ID',
    'Phone Number',
  ];
  String? setUpSelecteditem = 'Select bonus option';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                      child: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Setup Default Referral ID",
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
                  padding: const EdgeInsets.only(right: 220),
                  child: Text(
                    "Default Referral ID",
                    style: AppTextStyles.font14,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 52,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.white,
                    border: Border.all(
                      color: const Color(0xffCBD5E1),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: setUpSelecteditem,
                      onChanged: (String? value) {
                        setState(() {
                          setUpSelecteditem = value;
                          //items as String;
                        });
                      },
                      items: setUpItems
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    item,
                                    style: AppTextStyles.font12,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
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
                      'Save Settings',
                      style: AppTextStyles.font16
                          .copyWith(color: const Color(0XFFFFFFFF)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
