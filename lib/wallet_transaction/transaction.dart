import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Transaction History',
                  style: AppTextStyles.font18,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
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
                            style: AppTextStyles.font14,
                          ),
                          const Icon(Icons.arrow_drop_down),
                          const SizedBox(
                            width: 121,
                          ),
                          Text(
                            "All Status",
                            style: AppTextStyles.font14,
                          ),
                          const Icon(Icons.arrow_drop_down),
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
                        height: 17,
                      ),
                      Row(
                        children: [
                          Text(
                            "May",
                            style: AppTextStyles.font16,
                          ),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/successful.png'),
                        title: 'Transfer to Ayodele...',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Successful',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/failed.png'),
                        title: 'Wallet funding',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Failed',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/failed.png'),
                        title: 'Wallet funding',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Failed',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/failed.png'),
                        title: 'Wallet funding',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Failed',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/failed.png'),
                        title: 'Wallet funding',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Failed',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/successful.png'),
                        title: 'Transfer to Ayodele...',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Successful',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/successful.png'),
                        title: 'Transfer to Ayodele...',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Successful',
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      WalletTransaction(
                        AppImages: Image.asset('assets/icons/successful.png'),
                        title: 'Transfer to Ayodele...',
                        subtitle: 'Apr 18th, 20:59',
                        amount: '-₦35,000.00',
                        option: 'Successful',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WalletTransaction extends StatelessWidget {
  final AppImages;
  final String title;
  final String subtitle;
  final String amount;
  final String option;
  const WalletTransaction({
    super.key,
    required this.AppImages,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(height: 45, width: 45, child: AppImages),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.font14,
              ),
              Text(
                subtitle,
                style: AppTextStyles.font12.copyWith(
                  color: const Color(0xff475569),
                ),
              ),
            ],
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: AppTextStyles.font14,
              ),
              Text(
                option,
                style: AppTextStyles.font12
                    .copyWith(color: const Color(0XFF219653)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
