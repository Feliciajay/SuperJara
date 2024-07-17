import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/members/details_screen/details_component.dart';
import 'package:superjara/members/details_screen/transactions_component.dart';
import 'package:superjara/members/details_screen/wallet_component.dart';
import 'package:superjara/members/user_settings/settings.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Navigator.pop(context, (_) {
                          return const UserDetails();
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
                height: 29,
              ),
              Row(children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(137),
                    color: const Color(0XFFFDE48B),
                    image: const DecorationImage(
                      image: (AssetImage(
                        AppImages.manimages,
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
                      children: [
                        const Text(
                          "Maxprecursorltd@gmail.com",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF000000)),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 135),
                          child: Text(
                            "Max precious11",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 185),
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
                              const Text(
                                "Active",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff27AE60),
                                ),
                              ),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.settings),
                          Text(
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
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          color: Colors.red,
                        ),
                        Text(
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
                        child: TabBarView(
                            controller: _tabController,
                            children: const [
                              DetailsComponent(),
                              WalletComponent(),
                              TransactionComponent(),
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
