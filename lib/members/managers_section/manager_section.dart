import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_colors.dart';

import 'package:superjara/const/app_textsyle.dart';

import 'package:superjara/members/member_section/active_section.dart';
import 'package:superjara/members/member_section/all_section.dart';
import 'package:superjara/members/member_section/inactive_section.dart';

class ManagersSection extends ConsumerStatefulWidget {
  const ManagersSection({super.key});

  @override
  ConsumerState<ManagersSection> createState() => _ManagersSectionState();
}

class _ManagersSectionState extends ConsumerState<ManagersSection>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // Future.wait([
      //   ref.read(getUserDetailsNotifierProvider.notifier).getAllUserDetails(),
      // ]);
      //   await ref.read(countManagerNotifierProvider.notifier).countManager();
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
    // final data = ref.watch(countManagerNotifierProvider
    //   .select((v) => v.getCountManager.data?.data));

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                      size: 20,
                      color: Color(0xff4F4F4F),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search for a user",
                            hintStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 585,
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
                          SizedBox(
                            height: 31,
                            width: 103,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "All",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.black),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 15,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.grey),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'hhbjfj',
                                    //  "${data?.totalManagers ?? ''}",
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Active",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.black),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 15,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.grey),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'jhdkjgk',
                                    //    "${data?.totalActive ?? ''}",
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
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Inactive",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.black),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 15,
                                  width: 17,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: AppColors.grey),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'dkdgjgvd',
                                    //  "${data?.totalInactive}",
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
                        child: TabBarView(
                            controller: _tabController,
                            children: const [
                              AllSection(),
                              ActiveSection(),
                              InactiveSection(),
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
