import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/pending_kyc.dart';

class PendingDetails extends StatefulWidget {
  const PendingDetails({super.key});

  @override
  State<PendingDetails> createState() => _PendingDetailsState();
}

class _PendingDetailsState extends State<PendingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 38,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const PendingKYC();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 130,
                    ),
                    Text("Details", style: AppTextStyles.font18),
                  ],
                ),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  children: [
                    Text(
                      'First Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 219,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Peace',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Last Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 202,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Adedokun',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Status',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 223,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 17),
                      child: Container(
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
                              "Pending",
                              style: AppTextStyles.font12
                                  .copyWith(color: AppColors.lemon),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Phone Number',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 157,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '08169784012',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
