import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';
import 'package:superjara/pin/upload_data_pin.dart';
import 'package:superjara/pin/upload_educational_pin.dart';
import 'package:superjara/pin/upload_recharge_pin.dart';

class UpLoadPin extends StatefulWidget {
  const UpLoadPin({super.key});

  @override
  State<UpLoadPin> createState() => _UpLoadPinState();
}

class _UpLoadPinState extends State<UpLoadPin> {
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
                          return const UploadEducationalPin();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Upload Educational Pin',
                            style: AppTextStyles.font14,
                          ),
                          const SizedBox(
                            width: 150,
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
                          return const UploadRechargePin();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Upload Recharge Pin',
                            style: AppTextStyles.font14,
                          ),
                          const SizedBox(
                            width: 170,
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
                          return const UploadDataPin();
                        }));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Upload Data Pin',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
