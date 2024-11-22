import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';

import 'package:superjara/members/details_screen/details_account.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';

class DetailsComponent extends StatelessWidget {
  const DetailsComponent({super.key, required this.data});
  final UserDetailsData data;

  @override
  Widget build(BuildContext context) {
    //final dataList = data.map((e) => e).toList();
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("PERSONAL DETAILS",
                style: AppTextStyles.font14.copyWith(
                    color: const Color(0XFF333333),
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 20,
            ),
            Details(
              data: data,
            ),
            const SizedBox(
              height: 40,
            ),
            Text("CONTACT DETAILS",
                style: AppTextStyles.font14.copyWith(
                    color: const Color(0XFF333333),
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Email Address",
                    style: AppTextStyles.fonts12.copyWith(
                        color: const Color(0XFF000000),
                        fontWeight: FontWeight.w400)),
                Row(
                  children: [
                    Text(data.email,
                        style: AppTextStyles.fonts12.copyWith(
                            color: const Color(0XFF000000),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 4,
              color: AppColors.grey,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Phone Number",
                    style: AppTextStyles.font14.copyWith(
                        color: const Color(0XFF000000),
                        fontWeight: FontWeight.w400)),
                Row(
                  children: [
                    Text(data.phone,
                        style: AppTextStyles.font14.copyWith(
                            color: const Color(0XFF000000),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text("ADDRESS INFO",
                style: AppTextStyles.font14.copyWith(
                    color: const Color(0XFF333333),
                    fontWeight: FontWeight.w300)),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Address",
                    style: AppTextStyles.font14.copyWith(
                        color: const Color(0XFF333333),
                        fontWeight: FontWeight.w300)),
                Row(
                  children: [
                    Text("data",
                        style: AppTextStyles.font14.copyWith(
                            color: const Color.fromARGB(255, 194, 192, 192),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.arrow_forward_ios, size: 15)
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 4,
              color: AppColors.grey,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("City",
                    style: AppTextStyles.font14.copyWith(
                        color: const Color(0XFF333333),
                        fontWeight: FontWeight.w400)),
                Row(
                  children: [
                    Text('data.city',
                        style: AppTextStyles.font14.copyWith(
                            color: const Color.fromARGB(255, 194, 192, 192),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(
              height: 4,
              color: AppColors.grey,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("State",
                    style: AppTextStyles.font14.copyWith(
                        color: const Color(0XFF333333),
                        fontWeight: FontWeight.w400)),
                Row(
                  children: [
                    Text('data.state',
                        style: AppTextStyles.font14.copyWith(
                            color: const Color.fromARGB(255, 194, 192, 192),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
