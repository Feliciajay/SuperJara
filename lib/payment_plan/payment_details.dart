import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/payment_plan/edit_plan.dart';
import 'package:superjara/payment_plan/payment_plan.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
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
                            return const PaymentPlan();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text(
                      "Details",
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
                Row(
                  children: [
                    Text(
                      'Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 270,
                    ),
                    Text(
                      "Staff",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Amount',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 231,
                    ),
                    Text(
                      "NGN1000",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Status',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 239,
                    ),
                    Container(
                      height: 24,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 195, 232, 210)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFF27AE60)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "True",
                            style: AppTextStyles.font12
                                .copyWith(color: const Color(0XFF27AE60)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Can Expire',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 256,
                    ),
                    Text(
                      "No",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Entry Plan',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 272,
                    ),
                    Text(
                      "0",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Expiry Date',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 179,
                    ),
                    Text(
                      "Apr 18th,2024",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Plan By User',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 166,
                    ),
                    Text(
                      "Users On Staff",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Configure',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 174,
                    ),
                    Text(
                      "Configure Staff",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 133,
                ),
                Stack(
                  children: [
                    Container(
                      height: 92,
                      width: 410,
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 60,
                                height: 40,
                              ),
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  'assets/icons/grid.png',
                                ),
                              ),
                              const SizedBox(
                                width: 94,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return const EditPlan();
                                  }));
                                },
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Image.asset(
                                    'assets/icons/edit.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 94,
                              ),
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Image.asset(
                                  'assets/icons/trash.png',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 22),
                                child: Text('Configure Plan'),
                              ),
                              const SizedBox(
                                width: 35,
                              ),
                              const Text('Edit Plan'),
                              const SizedBox(
                                width: 51,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (_) {
                                          return AlertDialog(
                                            title: Container(
                                              height: 248,
                                              width: 350,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                children: [
                                                  const SizedBox(
                                                    height: 45,
                                                  ),
                                                  Text(
                                                    'Delete Plan',
                                                    style: AppTextStyles.font18,
                                                  ),
                                                  SizedBox(
                                                    height: 16,
                                                  ),
                                                  Text(
                                                    textAlign: TextAlign.center,
                                                    'Are you sure you want to delete this plan?',
                                                    style: AppTextStyles.font16,
                                                  ),
                                                  SizedBox(
                                                    height: 31,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        height: 48,
                                                        width: 123,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
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
                                                        width: 15,
                                                      ),
                                                      Container(
                                                        height: 48,
                                                        width: 123,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
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
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  child: const Text('Delete Plan'))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
