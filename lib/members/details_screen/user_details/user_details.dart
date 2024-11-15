import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/details_component.dart';
import 'package:superjara/members/details_screen/transactions_component.dart';
import 'package:superjara/members/details_screen/user_details/data/notifier/fetch_user_details_notifier.dart';
import 'package:superjara/members/details_screen/wallet_component.dart';
import 'package:superjara/members/user_settings/settings.dart';

class UserDetails extends ConsumerStatefulWidget {
  const UserDetails({
    super.key,
    required this.userId,
    required this.status,
  });
  final int userId;
  final int status;

  @override
  ConsumerState<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends ConsumerState<UserDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .watch(fetchUserDetailsNotifierProvider.notifier)
          .fetchUserDetails(userId: widget.userId);
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
    final userDetailsState = ref.watch(fetchUserDetailsNotifierProvider);
    final userData =
        userDetailsState.fetchUserDetailsResponse?.data.map((e) => e);
    final data = userDetailsState.fetchUserDetailsResponse?.data.first;
    // final email =userData!.map((e) => e.email);
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Details",
                    style: AppTextStyles.font18,
                  ),
                ],
              ),
              const SizedBox(
                height: 29,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  width: 23,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 236,
                          child: Text(
                            "${userData?.first.email}",
                            style: AppTextStyles.font16,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 155),
                          child: Text(
                            "${userData?.first.firstname} ${userData?.first.lastname}",
                            style: AppTextStyles.fonts12,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 195),
                          child: Row(
                            children: [
                              Container(
                                height: 4,
                                width: 4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff27AE60)),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(widget.status == 1 ? "Active" : "Inactive",
                                  style: AppTextStyles.fonts12.copyWith(
                                    color: const Color(0xff27AE60),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return const Settings();
                      }));
                    },
                    child: Container(
                      height: 33,
                      width: 136,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/setting.png',
                            width: 18,
                            height: 18,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "User Settings",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF000000)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    height: 33,
                    width: 136,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/minus.png',
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Deactivate",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 38,
                      width: 328,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicatorColor: const Color(0xff7B1085),
                        unselectedLabelColor: Colors.grey,
                        dividerColor: Colors.grey,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        tabs: [
                          const SizedBox(
                            height: 31,
                            width: 103,
                            child: Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            height: 31,
                            width: 103,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "Wallet",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            height: 31,
                            width: 103,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "Transaction",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
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
                          DetailsComponent(
                            data: data!,
                          ),
                          const WalletComponent(),
                          const TransactionComponent(),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
