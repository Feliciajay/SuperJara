import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';

class InactiveSection extends StatelessWidget {
  const InactiveSection({super.key});

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
                      width: 4,
                    ),
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (_) {
                                    //   return const UserDetails();
                                    // }));
                                  },
                                  child: Text(
                                    "Maxprecursorltd@gmail.com",
                                    style: AppTextStyles.fonts14
                                        .copyWith(color: AppColors.black),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Max precious11",
                              style: AppTextStyles.font12
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 24,
                      width: 52,
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
                                shape: BoxShape.circle, color: AppColors.lemon),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Active",
                            style: AppTextStyles.fonts12
                                .copyWith(color: AppColors.lemon),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(
                  color: Color.fromARGB(255, 237, 235, 235),
                  indent: 35.0,
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
