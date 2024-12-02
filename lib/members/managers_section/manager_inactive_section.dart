import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/user_details/user_details.dart';

class ManagerInactiveSection extends StatelessWidget {
  const ManagerInactiveSection({super.key, required this.managerData});

  final List<dynamic> managerData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: managerData.isEmpty
          ? const Column(
              children: [Text('No inactive manager')],
            )
          : Column(
              children: List.generate(
                managerData.length,
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
                                  AppImages.maleimages,
                                )),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (_) {
                                            return UserDetails(
                                              status: int.parse(
                                                  managerData[index]
                                                      .accessStatus),
                                              userId: managerData[index].userid,
                                            );
                                          }));
                                        },
                                        child: SizedBox(
                                          width: 210,
                                          child: Text(
                                            managerData[index].email,
                                            style: AppTextStyles.fonts14
                                                .copyWith(
                                                    color: AppColors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    managerData[index].username,
                                    style: AppTextStyles.font12
                                        .copyWith(fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            height: 24,
                            width: 52,
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
                                  width: 2,
                                ),
                                Text(
                                  "Active",
                                  style: AppTextStyles.fonts12
                                      .copyWith(color: AppColors.lemon),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 237, 235, 235),
                        indent: 35.0,
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
