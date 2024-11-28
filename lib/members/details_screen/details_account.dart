import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
    required this.data,
  });

  final List<UserDetailsData> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("First Name", style: AppTextStyles.font14),
            Text(data.first.firstname,
                style:
                    AppTextStyles.font14.copyWith(fontWeight: FontWeight.w500)),
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
            Text("Last Name", style: AppTextStyles.font14),
            Text(data.first.lastname,
                style:
                    AppTextStyles.font14.copyWith(fontWeight: FontWeight.w500)),
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
            Text("Username", style: AppTextStyles.font14),
            Text(data.first.lastname,
                style:
                    AppTextStyles.font14.copyWith(fontWeight: FontWeight.w500)),
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
            Text("Date Of Birth", style: AppTextStyles.font14),
            Row(
              children: [
                Text(data.first.dob,
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
          height: 5,
        ),
        const Divider(
          height: 4,
          color: AppColors.grey,
        ),
      ],
    );
  }
}
