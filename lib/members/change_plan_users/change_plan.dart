import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/payment_gateway.dart';

import 'package:superjara/members/user_settings/settings.dart';

class ChangePlan extends StatefulWidget {
  const ChangePlan({super.key});

  @override
  State<ChangePlan> createState() => _ChangePlanState();
}

class _ChangePlanState extends State<ChangePlan> {
  List<String> availablePlanItems = [
    'Entry Plan',
    'Resellers',
    'Pebore',
    'Amralinks',
    'Staff',
  ];
  String? availablePlanSelectedItem = 'Entry Plan';

  List<String> bypassPlanItems = [
    'Yes',
    'No',
  ];
  String? bypassPlanSelecteditem;

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
                          return const Settings();
                        });
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
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: availablePlanSelectedItem,
                    items: availablePlanItems
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
                    onChanged: (item) => setState(() {
                      availablePlanSelectedItem = item;
                    }),
                  ),
                ),
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
              SizedBox(
                height: 60,
              ),
              Container(
                height: 48,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0XFF000078),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return PaymentGateway();
                      }));
                    },
                    child: Text(
                      "Change Plan",
                      style: AppTextStyles.font16
                          .copyWith(color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
