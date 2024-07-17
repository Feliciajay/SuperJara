import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/user_details.dart';

class AllSection extends StatefulWidget {
  const AllSection({super.key});

  @override
  State<AllSection> createState() => _AllSectionState();
}

class _AllSectionState extends State<AllSection> {
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
                            AppImages.manimages,
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 23,
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
                                  return const UserDetails();
                                }));
                              },
                              child: Text(
                                "Maxprecursorltd@gmail.com",
                                style: AppTextStyles.font14
                                    .copyWith(color: AppColors.black),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 17),
                              child: Container(
                                height: 20,
                                width: 50,
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
                                      width: 4,
                                    ),
                                    Text(
                                      "Active",
                                      style: AppTextStyles.font12
                                          .copyWith(color: AppColors.lemon),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Max precious11",
                          style: AppTextStyles.font12,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
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
