import 'package:flutter/material.dart';
import 'package:superjara/api/api.dart';

import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/change_plan.dart';
import 'package:superjara/members/details_screen/details_account.dart';
import 'switch_items.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isGrantManagerSwitched = false;
  bool isRevokeATMAccess = false;
  bool isRevokePlatformAccess = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
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
                            return const Details();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 120,
                    ),
                    const Text(
                      "User Settings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Text(
                          "Access",
                          style: AppTextStyles.font14,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SwitchItems(
                        text: 'Grant Manager Access',
                        val: isGrantManagerSwitched,
                        onChangeMethod1: (_) {
                          setState(() {
                            isGrantManagerSwitched = !isGrantManagerSwitched;
                          });

                          isGrantManagerSwitched == true
                              ? showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      content: Container(
                                        height: 248,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 45,
                                            ),
                                            Text(
                                              'Grant Manager Access',
                                              style: AppTextStyles.font16,
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 40),
                                              child: Text(
                                                'Are you sure you want to grant this user manager access?',
                                                style: AppTextStyles.font14,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 31,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 128,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: const Color(
                                                          0xffEEEFEF),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: AppTextStyles
                                                            .font16
                                                            .copyWith(
                                                                color: const Color(
                                                                    0xff000078)),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 18,
                                                  ),
                                                  Container(
                                                    height: 48,
                                                    width: 128,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: const Color(
                                                          0xff000078),
                                                    ),
                                                    child: Center(
                                                        child: Text(
                                                      'Confirm',
                                                      style: AppTextStyles
                                                          .font16
                                                          .copyWith(
                                                              color: const Color(
                                                                  0xffEEEFEF)),
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                              : const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SwitchItems(
                        text: 'Revoke ATM Access',
                        val: isRevokeATMAccess,
                        onChangeMethod1: (_) {
                          setState(() {
                            isRevokeATMAccess = !isRevokeATMAccess;
                          });

                          isRevokeATMAccess == true
                              ? showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      content: Container(
                                        height: 248,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 45,
                                            ),
                                            Text(
                                              'Revoke ATM Access',
                                              style: AppTextStyles.font16,
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 50),
                                              child: Text(
                                                'Are you sure you want to revoke ATM Access?',
                                                style: AppTextStyles.font14,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 31,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 128,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: const Color(
                                                          0xffEEEFEF),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: AppTextStyles
                                                            .font16
                                                            .copyWith(
                                                                color: const Color(
                                                                    0xff000078)),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 18,
                                                  ),
                                                  Container(
                                                    height: 48,
                                                    width: 128,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: const Color(
                                                          0xff000078),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Confirm',
                                                        style: AppTextStyles
                                                            .font16
                                                            .copyWith(
                                                                color: const Color(
                                                                    0xffEEEFEF)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                              : const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SwitchItems(
                        text: 'Revoke Platform Access',
                        val: isRevokePlatformAccess,
                        onChangeMethod1: (_) {
                          setState(() {
                            isRevokePlatformAccess = !isRevokePlatformAccess;
                          });
                          isRevokePlatformAccess == true
                              ? showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      contentPadding: EdgeInsets.zero,
                                      content: Container(
                                        height: 248,
                                        width: 350,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 45,
                                            ),
                                            Text(
                                              'Revoke Platform Access',
                                              style: AppTextStyles.font16,
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 50),
                                              child: Text(
                                                'Are you sure you want to revoke platform Access?',
                                                style: AppTextStyles.font14,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 31,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 48,
                                                    width: 128,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: const Color(
                                                          0xffEEEFEF),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: AppTextStyles
                                                            .font16
                                                            .copyWith(
                                                                color: const Color(
                                                                    0xff000078)),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 18,
                                                  ),
                                                  Container(
                                                    height: 48,
                                                    width: 128,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      color: const Color(
                                                          0xff000078),
                                                    ),
                                                    child: Center(
                                                        child: Text(
                                                      'Confirm',
                                                      style: AppTextStyles
                                                          .font16
                                                          .copyWith(
                                                              color: const Color(
                                                                  0xffEEEFEF)),
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                              : const SizedBox.shrink();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return const ChangePlan();
                              }));
                            },
                            child: Text(
                              "Change Plan For User",
                              style: AppTextStyles.font14.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 295),
                        child: Text(
                          "OTHERS",
                          style: AppTextStyles.font14
                              .copyWith(color: const Color(0xff333333)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Set Payment Gateway Limit",
                            style: AppTextStyles.font14.copyWith(
                              color: const Color(0XFF333333),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Change Password",
                            style: AppTextStyles.font14.copyWith(
                              color: const Color(0XFF333333),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Create Account Number",
                            style: AppTextStyles.font14.copyWith(
                              color: const Color(0XFF333333),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Clear Login Attempts",
                            style: AppTextStyles.font14.copyWith(
                              color: const Color(0XFF333333),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return const API();
                              }));
                            },
                            child: Text(
                              "Reset API Key",
                              style: AppTextStyles.font14.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        height: 4,
                        color: AppColors.grey,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 270),
                        child: Text(
                          "Delete User",
                          style: AppTextStyles.font14.copyWith(
                            color: const Color(0XFF333333),
                          ),
                        ),
                      ),
                    ],
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
