import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_request.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/model/payment_gateway_response.dart';
import 'package:superjara/members/change_plan_users/payment_gateway/notifier/payment_gateway_notifier.dart';
import 'package:superjara/utils/enums.dart';

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
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   await ref
    //       .read(paymentGatewayNotifierProvider.notifier)
    //       .paymentGateway(userId: widget.userId, amount: "3");
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final PaymentGatewayState = ref.watch(paymentGatewayNotifierProvider);
    // // final PaymentGatewayData =
    // //     paymentGatewayState.paymentGatewayResponse?.data.map((e) => e);
    // final PaymentGatewayData = PaymentGatewayState.paymentGatewayResponse?.data;
    final isLoading = ref.watch(paymentGatewayNotifierProvider
        .select((v) => v.paymentGatewayState.isLoading));

    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              SingleChildScrollView(
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
                        controller: _controller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter amount',
                            helperStyle: AppTextStyles.font14),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    GestureDetector(
                      onTap: () {
                        _setPaymentLimit();
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

  void _setPaymentLimit() {
    ref.read(paymentGatewayNotifierProvider.notifier).paymentGateway(
          data: PaymentGatewayRequest(
            process: 'autobiz_members',
            action: 'setpaymentlimit',
            user_id: widget.userId.toString(),
            amount: _controller.text.trim(),
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
