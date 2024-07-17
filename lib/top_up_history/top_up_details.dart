import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/top_up_history/top_up_history.dart';

class TopUpDetails extends StatefulWidget {
  const TopUpDetails({super.key});

  @override
  State<TopUpDetails> createState() => _TopUpDetailsState();
}

class _TopUpDetailsState extends State<TopUpDetails> {
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
                  height: 30,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const TopUpHistory();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'User Name',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Text(
                      "Bilalsada",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Recipient No.',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 160,
                    ),
                    Text(
                      "08169784022",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Amount',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 230,
                    ),
                    Text(
                      "NGN1000",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Status',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    Container(
                      height: 24,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 142, 212, 171)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFF27AE60)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Completed",
                            style: AppTextStyles.font12
                                .copyWith(color: const Color(0XFF27AE60)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Description',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Yello, You have gifted 1GB to",
                          style: AppTextStyles.font14,
                        ),
                        Text(
                          '08169784022',
                          style: AppTextStyles.font14,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Type',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 221,
                    ),
                    Text(
                      "Data Top up",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Expiry Date',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 170,
                    ),
                    Text(
                      "Apr 18th,2024",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Memo',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Shared data mtn of for",
                          style: AppTextStyles.font14,
                        ),
                        Text(
                          '0169784022by Bilalsada',
                          style: AppTextStyles.font14,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  height: 4,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Respond Code',
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 190,
                    ),
                    Text(
                      "155782",
                      style: AppTextStyles.font14,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 81,
                ),
                Container(
                  height: 48,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff000078),
                  ),
                  child: Center(
                    child: Text(
                      'Resend Order',
                      style: AppTextStyles.font16
                          .copyWith(color: const Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
