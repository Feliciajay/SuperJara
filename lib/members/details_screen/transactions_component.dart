import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/transaction_widget.dart';

class TransactionComponent extends StatefulWidget {
  const TransactionComponent({super.key});

  @override
  State<TransactionComponent> createState() => _TransactionComponentState();
}

class _TransactionComponentState extends State<TransactionComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 750,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFCFCFC),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "All Categories",
                      style: AppTextStyles.font14
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Icon(Icons.arrow_drop_down),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      "All Status",
                      style: AppTextStyles.font14
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 2,
                  color: Color.fromARGB(255, 225, 223, 223),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Text(
                      "May",
                      style: AppTextStyles.font16.copyWith(
                          fontWeight: FontWeight.w500,
                          color: const Color(0XFF1A1A1A)),
                    ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const TransactionWidget(),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 2,
                  color: Color.fromARGB(255, 225, 223, 223),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        ('assets/icons/telephone.png'),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Airtime top up',
                              style: AppTextStyles.font14,
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Text(
                              "+N35,000.00",
                              style: AppTextStyles.font14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(' Apr 18th, 20:59',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0xff475569))),
                            const SizedBox(
                              width: 118,
                            ),
                            Text(
                              'Successful',
                              style: AppTextStyles.font12
                                  .copyWith(color: const Color(0XFF219653)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 2,
                  color: Color.fromARGB(255, 225, 223, 223),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        ('assets/icons/telephone.png'),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Airtime top up',
                              style: AppTextStyles.font14,
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Text(
                              "+N35,000.00",
                              style: AppTextStyles.font14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Apr 18th, 20:59',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0xff475569))),
                            const SizedBox(
                              width: 145,
                            ),
                            Text(
                              'Failed',
                              style: AppTextStyles.font12
                                  .copyWith(color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 2,
                  color: Color.fromARGB(255, 225, 223, 223),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        ('assets/icons/telephone.png'),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Data Bundle',
                              style: AppTextStyles.font14,
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Text(
                              "+₦35,000.00",
                              style: AppTextStyles.font14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Apr 18th, 20:59',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0xff475569))),
                            const SizedBox(
                              width: 110,
                            ),
                            Text(
                              'Successful',
                              style: AppTextStyles.font12
                                  .copyWith(color: const Color(0XFF219653)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 2,
                  color: Color.fromARGB(255, 225, 223, 223),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset(
                        ('assets/icons/telephone.png'),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Wallet funding',
                              style: AppTextStyles.font14,
                            ),
                            const SizedBox(
                              width: 80,
                            ),
                            Text(
                              "+N35,000.00",
                              style: AppTextStyles.font14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text('Apr 18th, 20:59',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0xff475569))),
                            const SizedBox(
                              width: 135,
                            ),
                            Text(
                              'Pending',
                              style: AppTextStyles.font12
                                  .copyWith(color: const Color(0XFF949621)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Divider(
                  height: 2,
                  color: Color.fromARGB(255, 225, 223, 223),
                ),
                const SizedBox(
                  height: 24,
                ),
                const TransactionWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
