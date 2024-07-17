import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class SendEmail extends StatefulWidget {
  const SendEmail({super.key});

  @override
  State<SendEmail> createState() => _SendEmailState();
}

class _SendEmailState extends State<SendEmail> {
  List<String> clientsItems = [
    'Select client',
  ];
  String? clientsSelecteditem = 'Select client';

  List<String> vendorsItems = [
    'Select vendor',
  ];
  String? vendorsSelecteditem;
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
                      width: 110,
                    ),
                    const Text(
                      "Send Email",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text(
                    "Clients",
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
                      value: clientsSelecteditem,
                      onChanged: (String? value) {
                        setState(() {
                          clientsSelecteditem = value;
                          //items as String;
                        });
                      },
                      items: clientsItems
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
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    "Vendors",
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
                      value: vendorsSelecteditem,
                      onChanged: (String? value) {
                        setState(() {
                          vendorsSelecteditem = value;
                          //items as String;
                        });
                      },
                      items: vendorsItems
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
                  height: 32,
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    "SMS Message",
                    style: AppTextStyles.font14,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 350,
                  height: 239,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Color(0xffCBD5E1))),
                ),
                SizedBox(
                  height: 49,
                ),
                Container(
                  height: 48,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff000078),
                  ),
                  child: Center(
                    child: Text(
                      'Send SMS',
                      style: AppTextStyles.font16
                          .copyWith(color: const Color(0XFFFFFFFF)),
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
