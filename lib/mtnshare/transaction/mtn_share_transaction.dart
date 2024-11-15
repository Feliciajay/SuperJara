import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/mtnshare/mtn_share.dart';
import 'package:superjara/home/count_transaction/model/count_transaction_response.dart';
import 'package:superjara/home/count_transaction/notifier/count_transaction_notifier.dart';

class MTNShareTransaction extends ConsumerStatefulWidget {
  const MTNShareTransaction({super.key});

  @override
  ConsumerState<MTNShareTransaction> createState() =>
      _MTNShareTransactionState();
}

class _MTNShareTransactionState extends ConsumerState<MTNShareTransaction> {
  @override
  Widget build(BuildContext context) {
    final countTransactionData = ref.watch(countTransactionNotifierProvider
        .select((v) => v.getCountTransaction.data?.data));
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const MtnShare();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "MTN Share Transactions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  width: 350,
                  height: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(94),
                    color: const Color(0xffEBEBEB),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        size: 20,
                        color: Color(0xff4F4F4F),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter Transaction id",
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                Column(
                  children: [
                    Container(
                      height: 692,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFCFCFC),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Text('May'),
                              Icon(Icons.arrow_drop_down),
                              SizedBox(
                                width: 208,
                              ),
                              Text('All Status'),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          Row(
                            children: [
                              Text(
                                '07035327869',
                                style: AppTextStyles.font14,
                              ),
                              const SizedBox(
                                width: 160,
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
                                  style: AppTextStyles.font12.copyWith(
                                      color: const Color(0xff475569))),
                              const SizedBox(
                                width: 190,
                              ),
                              Text(
                                'heappay',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0XFF219653)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '07035327869',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 160,
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
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 210,
                                      ),
                                      Text(
                                        'Failed',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFFFF0000)),
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
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text(
                                '07035327869',
                                style: AppTextStyles.font14,
                              ),
                              const SizedBox(
                                width: 160,
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
                                  style: AppTextStyles.font12.copyWith(
                                      color: const Color(0xff475569))),
                              const SizedBox(
                                width: 200,
                              ),
                              Text(
                                'Pending',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0XFF949621)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '07035327869',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 160,
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
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 190,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
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
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text(
                                '07035327869',
                                style: AppTextStyles.font14,
                              ),
                              const SizedBox(
                                width: 160,
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
                                  style: AppTextStyles.font12.copyWith(
                                      color: const Color(0xff475569))),
                              const SizedBox(
                                width: 210,
                              ),
                              Text(
                                'Failed',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0XFFFF0000)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '07035327869',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 160,
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
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Pending',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF949621)),
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
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text(
                                '07035327869',
                                style: AppTextStyles.font14,
                              ),
                              const SizedBox(
                                width: 160,
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
                                  style: AppTextStyles.font12.copyWith(
                                      color: const Color(0xff475569))),
                              const SizedBox(
                                width: 190,
                              ),
                              Text(
                                'Successful',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0XFF219653)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Text(
                                '07035327869',
                                style: AppTextStyles.font14,
                              ),
                              const SizedBox(
                                width: 160,
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
                                  style: AppTextStyles.font12.copyWith(
                                      color: const Color(0xff475569))),
                              const SizedBox(
                                width: 200,
                              ),
                              Text(
                                'Failed',
                                style: AppTextStyles.font12
                                    .copyWith(color: const Color(0XFFFF0000)),
                              ),
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
