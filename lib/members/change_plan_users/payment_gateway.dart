import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/change_password.dart';
import 'package:superjara/members/change_plan_users/change_plan.dart';

class PaymentGateway extends StatefulWidget {
  const PaymentGateway({super.key});

  @override
  State<PaymentGateway> createState() => _PaymentGatewayState();
}

class _PaymentGatewayState extends State<PaymentGateway> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const ChangePlan();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 90,
                    ),
                    const Text(
                      "Payment GateWay",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Set the minimum a user is expected to pay with atm or auto bank transfer',
                  style: AppTextStyles.font14,
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Text(
                      "Current Limit:",
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff333333)),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "0.00",
                      style: AppTextStyles.font14
                          .copyWith(color: const Color(0xff000000)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Container(
                  height: 52,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: const Color(
                        0XFFCBD5E1,
                      ),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '   Enter amount limit',
                        helperStyle: AppTextStyles.font14),
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                Container(
                  height: 48,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF000078),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const ChangePassword();
                        }));
                      },
                      child: Text(
                        "Set",
                        style: AppTextStyles.font16
                            .copyWith(color: const Color(0xffFFFFFF)),
                      ),
                    ),
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
