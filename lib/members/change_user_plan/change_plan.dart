import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_colors.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_user_plan/model/change_user_plan_request.dart';
import 'package:superjara/members/change_user_plan/notifier/change_user_plan_notifier.dart';
import 'package:superjara/utils/enums.dart';

class ChangePlan extends ConsumerStatefulWidget {
  const ChangePlan({
    super.key,
    required this.userId,
    required this.bypassPlan,
    required this.planId,
  });

  final int userId;
  final String bypassPlan;
  final int planId;

  @override
  ConsumerState<ChangePlan> createState() => _ChangePlanState();
}

class _ChangePlanState extends ConsumerState<ChangePlan> {
  // List<String> availablePlanItems = [
  //   'Entry Plan',
  //   'Resellers',
  //   'Pebore',
  //   'Amralinks',
  //   'Staff',
  // ];

  // String? availablePlanSelectedItem;
  Map<String, int> availablePlanMap = {
    'Entry Plan': 1,
    'Resellers': 2,
    'Pebore': 3,
    'Amralinks': 4,
    'Staff': 5,
  };

  String? availablePlanSelectedItem;
  int? selectedPlanValue;

  List<String> bypassPlanItems = [
    'Yes',
    'No',
  ];
  String? bypassPlanSelecteditem;
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   await ref.watch(changeUserPlanNotifierProvider.notifier).changeUserPlan(
    //       userId: widget.userId, planId: '1', bypassPlan: widget.bypassPlan);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final changeUserPlanState = ref.watch(changeUserPlanNotifierProvider);
    // final changeUserPlanData =
    //     changeUserPlanState.changeUserPlanResponse?.data.map((e) => e);
    // final data = changeUserPlanState.changeUserPlanResponse?.data;
    // final email =userData!.map((e) => e.email);
    final isLoading = ref.watch(changeUserPlanNotifierProvider
        .select((v) => v.changeUserPlanState.isLoading));

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            // Navigator.pop(context, (_) {
                            //   return const Settings();
                            // });
                          },
                          child: const Icon(Icons.arrow_back)),
                      const SizedBox(
                        width: 70,
                      ),
                      const Text(
                        "Change Plan For Users",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: Text(
                      'Current Plan:Entry Plan',
                      style: AppTextStyles.font14,
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      "Available Plan",
                      style: AppTextStyles.font14,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 52,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                      border: Border.all(
                        color: const Color(0xffCBD5E1),
                      ),
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: const SizedBox.shrink(),
                      hint: const Text('Select plan'),
                      value: availablePlanSelectedItem,
                      items: availablePlanMap.keys
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    item,
                                    style: AppTextStyles.font12,
                                  ),
                                ),
                              ))
                          .toList(),
                      onChanged: (value) => setState(() {
                        availablePlanSelectedItem = value;
                        selectedPlanValue =
                            availablePlanMap[value]; // Get the associated int
                      }),
                    ),

                    //  DropdownButton<String>(
                    //   isExpanded: true,
                    //   underline: const SizedBox.shrink(),
                    //   hint: const Text('Select plan'),
                    //   value: availablePlanSelectedItem,
                    //   items: availablePlanItems
                    //       .map((item) => DropdownMenuItem<String>(
                    //             value: item,
                    //             child: Padding(
                    //               padding: const EdgeInsets.only(left: 10),
                    //               child: Text(
                    //                 item,
                    //                 style: AppTextStyles.font12,
                    //               ),
                    //             ),
                    //           ))
                    //       .toList(),
                    //   onChanged: (value) => setState(() {
                    //     availablePlanSelectedItem = value;
                    //   }),
                    // ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      "Bypass Plan",
                      style: AppTextStyles.font14,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 52,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                      border: Border.all(
                        color: const Color(0xffCBD5E1),
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: const Text('Select option'),
                        value: bypassPlanSelecteditem,
                        onChanged: (String? value) {
                          setState(() {
                            bypassPlanSelecteditem = value;
                            //items as String;
                          });
                        },
                        items: bypassPlanItems
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      item,
                                      style: AppTextStyles.font12,
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      _changePlan();
                    },
                    child: Container(
                      height: 48,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0XFF000078),
                      ),
                      child: Center(
                        child: Text(
                          "Change Plan",
                          style: AppTextStyles.font16
                              .copyWith(color: const Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              isLoading
                  ? Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.2)),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  void _changePlan() {
    ref.read(changeUserPlanNotifierProvider.notifier).changeUserPlan(
          data: ChangeUserPlanRequest(
            process: 'autobiz_members',
            action: 'changeuserplan',
            user_id: widget.userId.toString(),
            plan_id: selectedPlanValue.toString(),

            // planId.toString(),
            bypass_plan: bypassPlanSelecteditem.toString(),
          ),
          onError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                error,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.red,
            ));
          },
          onSuccess: (message) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.green,
            ));
          },
        );
  }
}
