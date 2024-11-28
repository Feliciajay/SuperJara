import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/messaging/mtn_share/mtn_share.dart';
import 'package:superjara/mtnshare/transaction/data/model/mtn_share_transation_response.dart';
import 'package:superjara/mtnshare/transaction/data/notifier/mtn_share_transaction_notifier.dart';

class MTNShareTransaction extends ConsumerStatefulWidget {
  const MTNShareTransaction({super.key});

  @override
  ConsumerState<MTNShareTransaction> createState() =>
      _MTNShareTransactionState();
}

class _MTNShareTransactionState extends ConsumerState<MTNShareTransaction> {
  MtnShareTransactionData? mtnShareTransactionData;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(mtnShareTransactionNotifierProvider.notifier)
          .mtnShareTransaction();
      // await ref.read(averageSalesNotifierProvider.notifier).averageSales();
      // await ref.read(totalSimsLeftNotifierProvider.notifier).totalSimsLeft();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mtnShareTransactionState =
        ref.watch(mtnShareTransactionNotifierProvider);
    final mtnShareTransactionData =
        mtnShareTransactionState.mtnShareTransactionResponse?.data.data;

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
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              controller: ScrollController(),
                              itemCount: mtnShareTransactionData?.length,
                              itemBuilder: (context, index) {
                                final data = mtnShareTransactionData?[index];
                                return TransactionColumn(
                                  phoneNumber: "${data?.phone}",
                                  amount: "${data?.transId}",
                                  dateTime: "${data?.dateAdded}",
                                  status: "Successful",
                                  // statusColor: const Color(0XFF219653),
                                );
                              },
                            ),
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

class TransactionColumn extends StatelessWidget {
  final String phoneNumber;
  final String dateTime;
  final String amount;
  final String status;

  const TransactionColumn({
    required this.phoneNumber,
    required this.dateTime,
    required this.amount,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    switch (status.toLowerCase()) {
      case 'successful':
        statusColor = const Color(0XFF219653);
        break;
      case 'failed':
        statusColor = const Color(0XFFFF0000);
        break;
      case 'pending':
        statusColor = const Color(0XFF949621);
        break;
      default:
        statusColor = Colors.grey;
    }

    return Column(
      children: [
        Row(
          children: [
            Text(phoneNumber, style: AppTextStyles.font14),
            const Spacer(),
            Text(amount, style: AppTextStyles.font14),
          ],
        ),
        Row(
          children: [
            Text(dateTime,
                style: AppTextStyles.font12.copyWith(
                  color: const Color(0xff475569),
                )),
            const Spacer(),
            Text(status,
                style: AppTextStyles.font12.copyWith(color: statusColor)),
          ],
        ),
        const SizedBox(height: 15),
        const Divider(height: 2, color: Color(0xff999999)),
        const SizedBox(height: 24),
      ],
    );
  }
}
