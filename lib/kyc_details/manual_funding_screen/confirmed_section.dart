import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';

class ConfirmedSection extends StatelessWidget {
  const ConfirmedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(7, (index) {
          return Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Love Oladotun",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "NGN 10,000",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 185,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 17),
                            child: Container(
                              height: 24,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 157, 228, 186)),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 4,
                                      width: 4,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff27AE60)),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Confirmed",
                                      style: AppTextStyles.font11.copyWith(
                                          color: const Color(0XFF27AE60)),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              )
            ],
          );
        }),
      ),
    );
  }
}
