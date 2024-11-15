import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/home/data/model/count_member_response.dart';

import 'package:superjara/home/home_container.dart';
import 'package:superjara/home/notifier/count_member_notifier.dart';
import 'package:superjara/home/widgets/home_page_header.dart';
import 'package:superjara/home/widgets/status_widget.dart';
import 'package:superjara/home/count_managers/data/notifier/count_manager_notifier.dart';
import 'package:superjara/utils/enums.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  CountMemberData? countMemberData;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.watch(countMemberNotifierProvider.notifier).countMember();
      await ref.watch(countManagerNotifierProvider.notifier).countManager();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final countMemberState = ref.watch(countMemberNotifierProvider);
    final data = countMemberState.countMemberResponse?.data;

    final countManagerState = ref.watch(countManagerNotifierProvider);

    final managerData = countManagerState.getCountManager?.data;
    // final memberDataLoading = countMemberState.countMemberState.isLoading;
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 51,
                ),
                const HomePageHeader(),
                const SizedBox(
                  height: 28,
                ),
                Column(
                  children: [
                    HomeContainer(
                      title: 'Members',
                      value: '${data?.totalMembers}',
                      // value: '${data?.totalMembers}',
                      catergoryValues: Row(
                        children: [
                          StatusWidget(
                            isSuccess: true,
                            number: '${data?.totalActive}',
                            status: 'Active',
                          ),
                          StatusWidget(
                            isSuccess: false,
                            number: '${data?.totalInactive}',
                            status: 'Inactive',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 28),
                    HomeContainer(
                      title: 'Transactions',
                      value: '${data?.totalMembers}',
                      // value: '${data?.totalMembers}',
                      catergoryValues: const Row(
                        children: [
                          StatusWidget(
                            isSuccess: true,
                            number: '1000',
                            status: 'Successful',
                          ),
                          StatusWidget(
                            isSuccess: false,
                            number: '12',
                            status: 'Pending',
                          ),
                          // StatusWidget(
                          //   isSuccess: false,
                          //   number: '12',
                          //   status: 'Failed',
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 28),
                HomeContainer(
                  title: 'Managers',
                  value: '${managerData?.totalManagers}',
                  // value: '${data?.totalMembers}',
                  catergoryValues: Row(
                    children: [
                      StatusWidget(
                        isSuccess: true,
                        number: '${managerData?.totalActive}',
                        status: 'Active',
                      ),
                      StatusWidget(
                        isSuccess: false,
                        number: '${managerData?.totalInactive}',
                        status: 'Inactive',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                const HomeContainer(
                  title: 'Top Sellers',
                  value: 'Data Bundle',
                  // value: '${data?.totalMembers}',
                  catergoryValues: Row(
                    children: [
                      StatusWidget(
                        isSuccess: true,
                        number: '12',
                        status: 'Airtime top up',
                      ),
                      StatusWidget(
                        isSuccess: false,
                        number: '12',
                        status: 'Electricity',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
