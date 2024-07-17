import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      "Members",
                      style: AppTextStyles.font14,
                    ),
                    SizedBox(
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
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  "24",
                  style: AppTextStyles.font20,
                ),
              ),
              const SizedBox(
                height: 12,
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
                        "12",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font12
                            .copyWith(color: AppColors.lemon),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Active",
                      style:
                          AppTextStyles.font12.copyWith(color: AppColors.grey),
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
                        style:
                            AppTextStyles.font12.copyWith(color: AppColors.red),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "In active",
                      style:
                          AppTextStyles.font12.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
