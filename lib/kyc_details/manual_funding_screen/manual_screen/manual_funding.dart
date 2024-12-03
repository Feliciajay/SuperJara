import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/kyc_details/manual_funding_screen/confirmed_section.dart';
import 'package:superjara/kyc_details/manual_funding_screen/denied_section.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_screen/notifier/manual_funding_notifier.dart';
import 'package:superjara/kyc_details/manual_funding_screen/pending_section.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class ManualFundingScreen extends ConsumerStatefulWidget {
  const ManualFundingScreen({super.key});

  @override
  ConsumerState<ManualFundingScreen> createState() =>
      _ManualFundingScreenState();
}

class _ManualFundingScreenState extends ConsumerState<ManualFundingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.watch(manualFundingNotifierProvider.notifier).manualFunding();
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
    final manualFundingState = ref.watch(manualFundingNotifierProvider);
    final manualFundingData = manualFundingState.manualFundingResponse?.data;
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const MoreScreen();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 100,
                    ),
                    const Text(
                      "Manual Funding",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 42,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEDEDED),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff4F4F4F),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for a name",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
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
                        width: 328,
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
                            const SizedBox(
                              height: 31,
                              width: 103,
                              child: Center(
                                child: Text(
                                  "Pending",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1A1A1A)),
                                ),
                              ),
                            ),
                            Container(
                              height: 31,
                              width: 103,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Confirmed",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 31,
                              width: 103,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  "Denied",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
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
                            PendingSection(
                                manualFundingData:
                                    manualFundingData?.pending?.data ?? []),
                            ConfirmedSection(
                                manualFundingData:
                                    manualFundingData?.confirmed?.data ?? []),
                            DeniedSection(
                                manualFundingData:
                                    manualFundingData?.declined?.data ?? []),
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
