//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/user_details.dart';
//import 'package:superjara/members/details_screen/wallet_component.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({super.key});

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 125,
              ),
              Center(
                child: Container(
                  height: 148,
                  width: 148,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEDEDED),
                  ),
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/wallet.png',
                      scale: 5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 63,
              ),
              Text(
                'Let’s Fund Your Wallet',
                style: AppTextStyles.font24,
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                textAlign: TextAlign.center,
                'Funding your wallet allows you perform transactions such us bill payment, airtime\n and data purchase and other transactions',
                style: AppTextStyles.font14,
              ),
              const SizedBox(
                height: 62,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const UserDetails();
                  }));
                },
                child: Container(
                  height: 53,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff000078),
                  ),
                  child: Center(
                    child: Text(
                      'Fund Wallet',
                      style: AppTextStyles.font16.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context, (_) {
                      return const FundWallet();
                    });
                  },
                  child: Text(
                    'Not Now',
                    style: AppTextStyles.font16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: const Color(0XFF000078),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
