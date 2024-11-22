import 'package:flutter/material.dart';

import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/generate_voucher/uploads.dart';
import 'package:superjara/kyc_details/kyc.dart';
import 'package:superjara/kyc_details/manual_funding_screen/manual_funding.dart';
import 'package:superjara/messaging/create_email/create_email.dart';
import 'package:superjara/messaging/send_email/send_email.dart';
import 'package:superjara/messaging/send_sms/send_sms.dart';
import 'package:superjara/payment_gateway/payment_gateway.dart';
import 'package:superjara/payment_plan/payment_plan.dart';
import 'package:superjara/pin/upload_pin.dart';
import 'package:superjara/promo/manage_special-promo.dart';
import 'package:superjara/promo/setup_default.dart';
import 'package:superjara/promo/view_promo_option.dart';
import 'package:superjara/setup/available_service.dart';
import 'package:superjara/setup/main_service.dart';
import 'package:superjara/setup/service_routing.dart';
import 'package:superjara/setup/sub_service.dart';
import 'package:superjara/setup/vendors.dart';
import 'package:superjara/top_up_history/top_up_history.dart';
import 'package:superjara/wallet_transaction/transaction.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 38,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 180),
                    child: Text(
                      "More",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  Text(
                    'Logout',
                    style: AppTextStyles.font14
                        .copyWith(color: const Color(0xffEB5757)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Peace Adedokun",
                                style: AppTextStyles.font20
                                    .copyWith(fontWeight: FontWeight.w500)),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          "@peace_11",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 295),
                child: Text(
                  "PROFILE",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ProfileWidget(
                title: 'Edit Profile',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const KYC();
                  }));
                },
                child: const ProfileWidget(
                  title: 'KYC',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const ManualFundingScreen();
                        }));
                      },
                      child: Text(
                        'Manual Funding',
                        style: AppTextStyles.fonts14.copyWith(
                          color: const Color(0XFF333333),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 295),
                child: Text(
                  "PAYMENT",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const PaymentGateway();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Payment Gateway',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const PaymentPlan();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Payment Plan',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  "MESSAGING",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SendSMS();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Send SMS',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SendEmail();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Send Email',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const CreateEmail();
                        }));
                      },
                      child: Text(
                        'Create Email',
                        style: AppTextStyles.fonts14.copyWith(
                          color: const Color(0XFF333333),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  "PROMO",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SetupDefault();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Set Up Default Referrals',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const ViewPromoOption();
                  }));
                },
                child: const ProfileWidget(
                  title: 'View Promo Options',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const ManageSpecialPromo();
                        }));
                      },
                      child: Text(
                        'Manage Special Promo',
                        style: AppTextStyles.fonts14.copyWith(
                          color: const Color(0XFF333333),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 285),
                child: Text(
                  "MANAGER",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const TopUpHistory();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Manager Top Up History',
                ),
              ),
              const ProfileWidget(
                title: 'Manager Settings',
              ),
              const ProfileWidget(
                title: 'Manage Members',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Transaction();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Wallet Transaction History',
                ),
              ),
              const ProfileWidget(
                title: 'Payment Gateway Monitor',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Manage Wallet Transaction',
                      style: AppTextStyles.font14.copyWith(
                        color: const Color(0XFF333333),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 245),
                child: Text(
                  "SERVICE SET UP",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const ServiceRouting();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Service Routing',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const MainServices();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Main Services',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SubService();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Sub Services',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const AvailableService();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Available Services',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const SupportedVendors();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Supported Vendors',
                        style: AppTextStyles.fonts14.copyWith(
                          color: const Color(0XFF333333),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 285),
                child: Text(
                  "OTHERS",
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff333333)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const UpLoadPin();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Upload Pins',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const Uploads();
                  }));
                },
                child: const ProfileWidget(
                  title: 'Generate Vouchers',
                ),
              ),
              const ProfileWidget(
                title: 'Manage Debtors',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String title;
  const ProfileWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.fonts14.copyWith(
                  color: const Color(0XFF333333),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            height: 4,
            color: Color.fromARGB(255, 231, 234, 237),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
