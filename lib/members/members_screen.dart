import 'package:flutter/material.dart';

import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/home/home_page.dart';
import 'package:superjara/members/manager_section.dart';

import 'package:superjara/members/member_section/member_section.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({super.key});

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (_) {
                            return const HomeScreen();
                          }));
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text(
                      "Users",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                  controller: _tabController,
                  dividerHeight: 1,
                  tabs: [
                    Text(
                      "Members",
                      style:
                          AppTextStyles.font12.copyWith(color: AppColors.grey),
                    ),
                    Text(
                      "Managers",
                      style:
                          AppTextStyles.font12.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 600,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      MembersSection(),
                      ManagersSection(),
                    ],
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
