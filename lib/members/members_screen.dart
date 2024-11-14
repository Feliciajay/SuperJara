import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/home/home_page.dart';
import 'package:superjara/members/managers_section/manager_section.dart';

import 'package:superjara/members/member_section/member_section.dart';

class MemberScreen extends ConsumerStatefulWidget {
  const MemberScreen({super.key});

  @override
  ConsumerState<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends ConsumerState<MemberScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
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
                    Text(
                      "Users",
                      style: AppTextStyles.font18
                          .copyWith(color: const Color(0xff000000)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                  controller: _tabController,
                  dividerHeight: 1,
                  labelColor: Colors.black,
                  unselectedLabelColor:
                      const Color.fromARGB(255, 154, 156, 159),
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3.0,
                      color: Color(0xff7B1085),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 115),
                  ),
                  tabs: [
                    Text("Members", style: AppTextStyles.fonts14),
                    Text("Managers", style: AppTextStyles.fonts14),
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
