import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/generate_voucher/data_vouchers.dart';
import 'package:superjara/generate_voucher/wallet_vouchers.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class Uploads extends StatefulWidget {
  const Uploads({super.key});

  @override
  State<Uploads> createState() => _UploadsState();
}

class _UploadsState extends State<Uploads> {
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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, (_) {
                          return const MoreScreen();
                        });
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(
                      width: 120,
                    ),
                    const Text(
                      "Uploads",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 52,
                ),
                Container(
                  height: 57,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return WalletVouchers();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Wallet Voucher',
                            style: AppTextStyles.font14,
                          ),
                          const SizedBox(
                            width: 200,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                Container(
                  height: 57,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return DataVouchers();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Data Voucher',
                            style: AppTextStyles.font14,
                          ),
                          const SizedBox(
                            width: 210,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          )
                        ],
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
