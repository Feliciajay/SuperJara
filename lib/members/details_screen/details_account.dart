import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';

class Details extends StatelessWidget {
  const Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "First Name",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            Text("Peace"),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Divider(
          height: 4,
          color: AppColors.grey,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Last Name",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            Text("Adedokun"),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Divider(
          height: 4,
          color: AppColors.grey,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Username",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            Text("Peace_11"),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Divider(
          height: 4,
          color: AppColors.grey,
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Date Of Birth",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            Row(
              children: [
                Text(
                  "Nil",
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          height: 4,
          color: AppColors.grey,
        ),
      ],
    );
  }
}
