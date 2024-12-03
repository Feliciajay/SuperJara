import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';

class DeniedSection extends StatelessWidget {
  const DeniedSection({super.key, required this.manualFundingData});
  final List<dynamic> manualFundingData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: manualFundingData.isEmpty
          ? const Column(
              children: [
                Text('No declined details'),
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
                              data['accountName'].toString(),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  data.amountSent.toString(),
                                  style: TextStyle(
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
                                            173, 234, 185, 192)),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 4,
                                            width: 4,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffAE2727)),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            data.status.toString(),
                                            style: AppTextStyles.font11
                                                .copyWith(
                                                    color: const Color(
                                                        0XFFAE2727)),
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
