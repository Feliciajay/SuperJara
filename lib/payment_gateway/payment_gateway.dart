import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/payment_gateway/payment_gateway_details.dart';

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
                  height: 30,
                ),
                const Text(
                  "Payment Gateway",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
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
                              hintText: "Search for a gateway",
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 31,
                ),
                Column(
                  children: [
                    Container(
                      height: 692,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFCFCFC),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text('All Gateways'),
                              const Icon(Icons.arrow_drop_down),
                              const SizedBox(
                                width: 150,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (_) {
                                      return const PaymentGatewayDetails();
                                    }));
                                  },
                                  child: const Text('All Status')),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                          const SizedBox(
                            height: 29,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Safehavenmfb',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 170,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 210,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Safehavenmfb',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 170,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 210,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Monnify',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Monnify',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Monnify',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Monnify',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Monnify',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            height: 2,
                            color: Color(0xff999999),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Monnify',
                                        style: AppTextStyles.font14,
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        "₦35,000.00",
                                        style: AppTextStyles.font14,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('ipay.com.ng',
                                          style: AppTextStyles.font12.copyWith(
                                              color: const Color(0xff475569))),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(
                                        'Successful',
                                        style: AppTextStyles.font12.copyWith(
                                            color: const Color(0XFF219653)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
