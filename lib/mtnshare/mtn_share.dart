import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/change_password.dart';
import 'package:superjara/mtnshare/mtn_details.dart';
import 'package:superjara/mtnshare/mtn_share_transaction.dart';

class MtnShare extends StatefulWidget {
  const MtnShare({super.key});

  @override
  State<MtnShare> createState() => _MtnShareState();
}

class _MtnShareState extends State<MtnShare> {
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
                  height: 50,
                ),
                const Text(
                  "MTN Share",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    'Overview',
                    style: AppTextStyles.font14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 165,
                      height: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Total Sim',
                              style: AppTextStyles.font12.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text(
                              '353',
                              style: AppTextStyles.font16.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 165,
                      height: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Today’s Sales',
                              style: AppTextStyles.font12.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text('21440TB',
                                style: AppTextStyles.font16.copyWith(
                                  color: const Color(0XFF333333),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  children: [
                    Container(
                      width: 165,
                      height: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Average Sales/sim',
                              style: AppTextStyles.font12.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text(
                              '60GB',
                              style: AppTextStyles.font16.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 165,
                      height: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFFFFFF),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 17,
                            ),
                            Text(
                              'Numbers Of Sim Left',
                              style: AppTextStyles.font12.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Text(
                              '158',
                              style: AppTextStyles.font16.copyWith(
                                color: const Color(0XFF333333),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 48,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return MTNDetails();
                          }));
                        },
                        child: Text(
                          "Manage Sim Cards",
                          style: AppTextStyles.font14
                              .copyWith(color: const Color(0xff000000)),
                        ),
                      ),
                      const SizedBox(
                        width: 190,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 48,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffFFFFFF)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return MTNShareTransaction();
                          }));
                        },
                        child: Text(
                          "MTN Share Transactions",
                          style: AppTextStyles.font14
                              .copyWith(color: const Color(0xff000000)),
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
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
