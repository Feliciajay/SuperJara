import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/user_details/user_details.dart';
import 'package:superjara/members/user_settings/data/model/fetch_users_response.dart';

class MemberAllSection extends StatelessWidget {
  const MemberAllSection({
    super.key,
    required this.memberData,
    this.isSuccess,
    required this.status,
  });

  final List<FetchUserDataDetails> memberData;

  final bool? isSuccess;
  final String status;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: memberData.isEmpty
          ? const Column(
              children: [
                Text('No active member'),
              ],
            )
          : Column(
              children: List.generate(
                memberData.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return UserDetails(
                              status: int.parse(memberData[index].accessStatus),
                              userId: memberData[index].userid,
                            );
                          },
                        ),
                      );
                    },
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
                                                    memberData[index]
                                                        .accessStatus),
                                                userId:
                                                    memberData[index].userid,
                                              );
                                            }));
                                          },
                                          child: SizedBox(
                                            width: 210,
                                            child: Text(
                                              memberData[index].email,
                                              style: AppTextStyles.fonts14
                                                  .copyWith(
                                                      color: AppColors.black),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      memberData[index].username,
                                      style: AppTextStyles.font12.copyWith(
                                          fontWeight: FontWeight.w400),
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
                                  color: memberData[index].accessStatus == '1'
                                      ? AppColors.green.withOpacity(0.20)
                                      : Colors.red),
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
                                    memberData[index].accessStatus == '1'
                                        ? 'Active'
                                        : 'Inactive',
                                    style: AppTextStyles.fonts12.copyWith(
                                        color: memberData[index].accessStatus ==
                                                '1'
                                            ? AppColors.green
                                            : Colors.red),
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
                    ),
                  );
                },
              ),
            ),
    );
  }
}
