import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/done_kyc.dart';
import 'package:superjara/kyc_details/pending_kyc.dart';

class KYC extends StatefulWidget {
  const KYC({super.key});

  @override
  State<KYC> createState() => _KYCState();
}

class _KYCState extends State<KYC> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const KYC();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 140,
                    ),
                    const Text(
                      "KYC",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
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
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                        width: 341,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffE4E6E7),
                        ),
                        child: TabBar(
                          controller: _tabController,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          indicatorColor: Colors.transparent,
                          indicator: null,
                          //  BoxDecoration(
                          //   borderRadius: BorderRadius.circular(10),
                          //   color: const Color(0xffB0B0D5),
                          // ),
                          tabs: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              height: 31,
                              width: 168,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Pending",
                                    style: AppTextStyles.font12.copyWith(
                                      color: AppColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Container(
                                    height: 15,
                                    width: 17,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: AppColors.grey),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "8",
                                      style: AppTextStyles.font10
                                          .copyWith(color: AppColors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 31,
                              width: 168,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Done",
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
                                        borderRadius: BorderRadius.circular(9),
                                        color: AppColors.grey),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      "8",
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
                                PendingKYC(),
                                DoneKYC(),
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
      ),
    );
  }
}
