import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_textsyle.dart';

import 'package:superjara/messaging/mtn_details/mtn_details.dart';
import 'package:superjara/messaging/mtn_share/average_sales/notifier/average_sales_notifier.dart';
import 'package:superjara/messaging/mtn_share/data/model/total_mtn_sims_response.dart';
import 'package:superjara/messaging/mtn_share/data/notifier/total_mtn_sims_notifier.dart';
import 'package:superjara/messaging/mtn_share/today_sales/notifier/today_sales_notifier.dart';
import 'package:superjara/messaging/mtn_share/total_sims_left/notifier/total_sims_left_notifier.dart';
import 'package:superjara/mtnshare/transaction/mtn_share_transaction.dart';

class MtnShare extends ConsumerStatefulWidget {
  const MtnShare({super.key});

  @override
  ConsumerState<MtnShare> createState() => _MtnShareState();
}

class _MtnShareState extends ConsumerState<MtnShare> {
  TotalMtnSimsData? totalMtnSimsData;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(totalMtnSimsNotifierProvider.notifier).totalMtnSims();
      await ref.read(averageSalesNotifierProvider.notifier).averageSales();
      await ref.read(totalSimsLeftNotifierProvider.notifier).totalSimsLeft();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final totalMtnSimsState = ref.watch(totalMtnSimsNotifierProvider);
    final TotalMtnSimsData = totalMtnSimsState.totalMtnSimsResponse?.data;

    final averageSalesState = ref.watch(averageSalesNotifierProvider);
    final AverageSalesData = averageSalesState.averageSalesResponse?.data;

    final totalSimsLeftState = ref.watch(totalSimsLeftNotifierProvider);
    final TotalSimsLeftData = totalSimsLeftState.totalSimsLeftResponse?.data;

    final todaySalesState = ref.watch(todaySalesNotifierProvider);
    final TodaySalesData = todaySalesState.todaySalesResponse?.data;
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
                              '${TotalMtnSimsData?.response ?? 0}',
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
                            Text('${TodaySalesData?.response ?? 0}',
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
                              '${AverageSalesData?.response ?? 0}',
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
                              '${TotalSimsLeftData?.response}',
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
                            return const MTNDetails();
                          }));
                        },
                        child: Text(
                          "Manage Sim Cards",
                          style: AppTextStyles.font14
                              .copyWith(color: const Color(0xff000000)),
                        ),
                      ),
                      const SizedBox(
                        width: 180,
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
                            return const MTNShareTransaction();
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
