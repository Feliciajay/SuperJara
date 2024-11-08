import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/pending_details.dart';

class PendingKYC extends StatelessWidget {
  const PendingKYC({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          8,
          (index) {
            return Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(137),
                                color: const Color(0XFFFDE48B),
                                image: const DecorationImage(
                                  image: (AssetImage(
                                    AppImages.maleimages,
                                  )),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (_) {
                                          return const PendingDetails();
                                        }));
                                      },
                                      child: Text(
                                        "Maxprecursorltd@gmail.com",
                                        style: AppTextStyles.font14
                                            .copyWith(color: AppColors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Max precious11",
                                      style: AppTextStyles.font12,
                                    ),
                                    const SizedBox(
                                      width: 105,
                                    ),
                                    Container(
                                      height: 24,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                                color: Color(0xffAE8027)),
                                          ),
                                          const SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "Pending",
                                            style: AppTextStyles.font11
                                                .copyWith(
                                                    color: const Color(
                                                        0XFFAE8027)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
