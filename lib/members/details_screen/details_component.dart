import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';

import 'package:superjara/members/details_screen/details_account.dart';

class DetailsComponent extends StatefulWidget {
  const DetailsComponent({super.key});

  @override
  State<DetailsComponent> createState() => _DetailsComponentState();
}

class _DetailsComponentState extends State<DetailsComponent> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PERSONAL DETAILS",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Details(),
            SizedBox(
              height: 40,
            ),
            Text(
              "CONTACT DETAILS",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "adedokunpeace@gmail.com",
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
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
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0XFF333333),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "08169784022",
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "ADDRESS INFO",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0XFF333333),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0XFF333333),
                  ),
                ),
                Row(
                  children: [Text("Nil"), Icon(Icons.arrow_forward_ios)],
                ),
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
                  "City",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0XFF333333),
                  ),
                ),
                Row(
                  children: [Text("Nil"), Icon(Icons.arrow_forward_ios)],
                ),
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
                  "State",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0XFF333333),
                  ),
                ),
                Row(
                  children: [Text("Nil"), Icon(Icons.arrow_forward_ios)],
                ),
              ],
            ),
          ]),
    );
  }
}
