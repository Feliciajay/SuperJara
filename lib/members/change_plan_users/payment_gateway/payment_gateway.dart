import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_response.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/notifier/payment_gateway_notifier.dart';

class PaymentGateway extends ConsumerStatefulWidget {
  const PaymentGateway({
    super.key,
    required this.userId,
    required this.amount,
  });
  final int userId;
  final int amount;

  @override
  ConsumerState<PaymentGateway> createState() => _PaymentGatewayState();
}

class _PaymentGatewayState extends ConsumerState<PaymentGateway> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref
          .read(paymentGatewayNotifierProvider.notifier)
          .paymentGateway(userId: widget.userId, amount: "3");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final PaymentGatewayState = ref.watch(paymentGatewayNotifierProvider);
    // final PaymentGatewayData =
    //     paymentGatewayState.paymentGatewayResponse?.data.map((e) => e);
    final PaymentGatewayData = PaymentGatewayState.paymentGatewayResponse?.data;
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
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
                          // Navigator.pop(context, (_) {
                          //   return const ChangePlan();
                          // });
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
                      PaymentGatewayResponse.amount,
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
                        hintText: ' PaymentGatewayData?',
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
                        // Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //   return const ChangeUserPassword();
                        // }));
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
