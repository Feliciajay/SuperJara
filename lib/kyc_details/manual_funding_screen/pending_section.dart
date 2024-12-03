import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding_details/manual_pending_detail.dart';

import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/model/manual_funding_response.dart';

class PendingSection extends StatelessWidget {
  const PendingSection({super.key, required this.manualFundingData});
  final List<ConfirmedData> manualFundingData;

  // ManualFundingData? manualFundingData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: manualFundingData.isEmpty
          ? const Column(
              children: [
                Text('No pending details'),
              ],
            )
          : Column(
              children: List.generate(manualFundingData.length, (index) {
                final data = manualFundingData[index];
                return Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.accountName.toString(),
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  data.amountSent.toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 160,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 17),
                                  child: Container(
                                    height: 24,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 240, 205, 135),
                                    ),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 4,
                                            width: 4,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffAE8027)),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (_) {
                                                return const ManualPendingDetails(
                                                  userId: 1,
                                                );
                                              }));
                                            },
                                            child: Text(
                                              data.status.toString(),
                                              style: AppTextStyles.font11
                                                  .copyWith(
                                                      color: const Color(
                                                          0XFFAE8027)),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color.fromARGB(255, 230, 228, 228),
                    )
                  ],
                );
              }),
            ),
    );
  }
}
