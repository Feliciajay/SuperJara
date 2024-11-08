import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/done_details.dart';

class DoneKYC extends StatelessWidget {
  const DoneKYC({super.key});

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
                                  return const DoneDetails();
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
                              width: 100,
                            ),
                            Container(
                              height: 24,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.lightgreen),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 4,
                                    width: 4,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.lemon),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Done",
                                    style: AppTextStyles.font12
                                        .copyWith(color: AppColors.lemon),
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
