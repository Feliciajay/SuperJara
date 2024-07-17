import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/const/home_container.dart';
import 'package:superjara/home/api_text_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
      child: SingleChildScrollView(
        child: Column(
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
                        Text(
                          "Hello peace",
                          style: AppTextStyles.font18,
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ApiTestScreen())),
                          child: const Icon(
                            Icons.notifications,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Set up your VTU business",
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            const HomeContainer(),
            const SizedBox(
              height: 28,
            ),
            Column(
              children: [
                Container(
                  width: 350,
                  height: 140,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transactions",
                              style: AppTextStyles.font14,
                            ),
                            Container(
                              height: 34,
                              width: 54,
                              child: Row(
                                children: [
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.darkgrey),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.darkgrey),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: 8,
                                    width: 8,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.darkgrey),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Text(
                          "24",
                          style: AppTextStyles.font20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 16,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.lightgreen),
                              child: Text(
                                "1000",
                                textAlign: TextAlign.center,
                                style: AppTextStyles.font12
                                    .copyWith(color: AppColors.lemon),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Successful",
                              style: AppTextStyles.font12
                                  .copyWith(color: AppColors.grey),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 16,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.wine),
                              child: Text(
                                "12",
                                textAlign: TextAlign.center,
                                style: AppTextStyles.font12
                                    .copyWith(color: AppColors.red),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Pending",
                              style: AppTextStyles.font12
                                  .copyWith(color: AppColors.grey),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 16,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.wine),
                              child: Text(
                                "12",
                                textAlign: TextAlign.center,
                                style: AppTextStyles.font12
                                    .copyWith(color: AppColors.red),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Failed",
                              style: AppTextStyles.font12
                                  .copyWith(color: AppColors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const HomeContainer(),
                const SizedBox(
                  height: 28,
                ),
                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 140,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Top Sellers",
                                  style: AppTextStyles.font14,
                                ),
                                Container(
                                  height: 34,
                                  width: 54,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.darkgrey),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.darkgrey),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.darkgrey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 210),
                            child: Text(
                              "Data Bundle",
                              style: AppTextStyles.font20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 16,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.lightgreen),
                                  child: Text(
                                    "2",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.font12
                                        .copyWith(color: AppColors.lemon),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Airtime top up",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 16,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.wine),
                                  child: Text(
                                    "3",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.font12
                                        .copyWith(color: AppColors.red),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Electricity",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
