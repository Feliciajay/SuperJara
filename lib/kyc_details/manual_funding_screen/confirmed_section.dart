import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/model/manual_funding_response.dart';

class ConfirmedSection extends StatelessWidget {
  const ConfirmedSection({super.key, required this.manualFundingData});
  final List<ConfirmedData> manualFundingData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: manualFundingData.isEmpty
          ? const Column(
              children: [
                Text('No confirmed details'),
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
                                  width: 185,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 17),
                                  child: Container(
                                    height: 24,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color.fromARGB(
                                            255, 157, 228, 186)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 4,
                                            width: 4,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff27AE60)),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            data.status.toString(),
                                            style: AppTextStyles.font11
                                                .copyWith(
                                                    color: const Color(
                                                        0XFF27AE60)),
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
