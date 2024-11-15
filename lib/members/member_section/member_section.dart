import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/const/app_colors.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/home/notifier/count_member_notifier.dart';

import 'package:superjara/members/member_section/all_section.dart';
import 'package:superjara/members/member_section/inactive_section.dart';
import 'package:superjara/members/member_section/member_active_section.dart';
import 'package:superjara/members/member_section/member_all_active_section.dart';
import 'package:superjara/members/member_section/member_inactive_section.dart';
import 'package:superjara/members/user_settings/data/notifier/fetch_users_notifier.dart';

class MembersSection extends ConsumerStatefulWidget {
  const MembersSection({super.key});

  @override
  ConsumerState<MembersSection> createState() => _MembersSectionState();
}

class _MembersSectionState extends ConsumerState<MembersSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.watch(fetchUserNotifierProvider.notifier).fetchUser();
      await ref.watch(countMemberNotifierProvider.notifier).countMember();
      // await ref.watch(countManagerNotifierProvider.notifier).countManager();
      //  await ref.watch(fetchUserNotifierProvider.notifier).countManager();
    });

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fetchUserState = ref.watch(fetchUserNotifierProvider);
    final fetchUserData = fetchUserState.fetchUserResponse?.data;
    // final fetchUserDataDetail = fetchUserState.fetchUserResponse?.data;

    final countMemberState = ref.watch(countMemberNotifierProvider);
    final countMemberData = countMemberState.countMemberResponse?.data;

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 42,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffEDEDED),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(94),
                        color: const Color(0xffEBEBEB),
                      ),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.search,
                            size: 15,
                            color: Color(0xff4F4F4F),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search for a member",
                                  hintStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 576,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 38,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffE4E6E7),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.transparent,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffB0B0D5),
                        ),
                        tabs: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9)),
                            height: 31,
                            width: 103,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "All",
                                  style: AppTextStyles.fonts12
                                      .copyWith(color: const Color(0XFF1A1A1A)),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 15,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: AppColors.grey),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "${countMemberData?.totalMembers}",
                                    style: AppTextStyles.font10
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 31,
                            width: 103,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Active",
                                  style: AppTextStyles.fonts12
                                      .copyWith(color: const Color(0XFF1A1A1A)),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 15,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: AppColors.grey),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "${countMemberData?.totalActive}",
                                    style: AppTextStyles.font10
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 31,
                            width: 103,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Inactive",
                                  style: AppTextStyles.fonts12
                                      .copyWith(color: const Color(0XFF1A1A1A)),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 15,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: AppColors.grey),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    "${countMemberData?.totalInactive}",
                                    style: AppTextStyles.font10
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 17),
                        child:
                            TabBarView(controller: _tabController, children: [
                          //const AllSection(),
                          MemberAllSection(
                            status: 'true',
                            isSuccess: false,
                            memberData: fetchUserData?.allUsers.data ?? [],
                          ),
                          MemberActiveSection(
                            memberData: fetchUserData?.activeUsers.data ?? [],
                          ),
                          MemberInactiveSection(
                            memberData: fetchUserData?.inactiveUsers.data ?? [],
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
