import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/notifier/manual_funding_details_notifier.dart';

class ManualPendingDetails extends ConsumerStatefulWidget {
  const ManualPendingDetails({
    required this.userId,
    //  required this.status,
    super.key,
  });
  final int userId;
  // final int status;

  @override
  ConsumerState<ManualPendingDetails> createState() =>
      _ManualPendingDetailsState();
}

class _ManualPendingDetailsState extends ConsumerState<ManualPendingDetails> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .watch(manualFundingDetailsNotifierProvider.notifier)
          .manualFundingDetails(userId: widget.userId);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final manualFundingDetailsState =
        ref.watch(manualFundingDetailsNotifierProvider);
    // final manualData =
    //     manualFundingDetailsState.manualFundingDetailsResponse?.data.map((e) => e);
    final manualData =
        manualFundingDetailsState.manualFundingDetailsResponse?.data;
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
                          Navigator.pop(context, (_) {});
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
                      'User Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 220,
                    ),
                    Text(
                      "${manualData?.username}",
                      style: AppTextStyles.fonts12,
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
                      'Account Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      "${manualData?.accountName}",
                      style: AppTextStyles.fonts12,
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
                      'Narration',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    Text(
                      "${manualData?.dateUpdated}",
                      style: AppTextStyles.fonts12,
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
                      'Bank Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    Text(
                      "${manualData?.bankName}",
                      style: AppTextStyles.fonts12,
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
                      width: 240,
                    ),
                    Text(
                      "${manualData?.amountSent}",
                      style: AppTextStyles.fonts12,
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
                      width: 223,
                    ),
                    Container(
                      height: 24,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 239, 212, 157)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFFAE8027)),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "${manualData?.status}",
                            style: AppTextStyles.font12
                                .copyWith(color: const Color(0XFFAE8027)),
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
                      'Date Created',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      "${manualData?.dateCreated}",
                      style: AppTextStyles.fonts12,
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
                      'Date Updated',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      "${manualData?.dateUpdated}",
                      style: AppTextStyles.fonts12,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 136,
                ),
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffEB5757),
                      ),
                      child: Center(
                        child: Text(
                          'Deny',
                          style: AppTextStyles.font16
                              .copyWith(color: const Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 19,
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
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 45,
                                      ),
                                      Text(
                                        'Confirm Payment',
                                        style: AppTextStyles.font18,
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        'Please confirm that you have received payment?',
                                        style: AppTextStyles.font16,
                                      ),
                                      const SizedBox(
                                        height: 31,
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () => Navigator.pop(context),
                                            child: Container(
                                              height: 48,
                                              width: 123,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xffEEEFEF),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Cancel',
                                                  style: AppTextStyles.font16
                                                      .copyWith(
                                                          color: const Color(
                                                              0xff000078)),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            height: 48,
                                            width: 123,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xff000078),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Confirm',
                                                style: AppTextStyles.font16
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
                      child: Container(
                        height: 48,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff219653),
                        ),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: AppTextStyles.font16
                                .copyWith(color: const Color(0xffFFFFFF)),
                          ),
                        ),
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
