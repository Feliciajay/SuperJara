import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/pin/upload_pin.dart';

class UploadRechargePin extends StatefulWidget {
  const UploadRechargePin({super.key});

  @override
  State<UploadRechargePin> createState() => _UploadRechargePinState();
}

class _UploadRechargePinState extends State<UploadRechargePin> {
  List<String> setUpItems = [
    'Select network type',
    'MTN',
    'GLO',
    'Airtel',
    '9 Mobile',
  ];
  String? setUpSelecteditem = 'Select network type';

  List<String> amountItems = [
    'Select amount',
    '100',
    '200',
    '500',
    '1000',
  ];
  String? amountSelecteditem = 'Select amount';
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
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context, (_) {
                        return const UpLoadPin();
                      });
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    "Upload Recharge Pin",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    "Network Type",
                    style: AppTextStyles.font14,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                      value: setUpSelecteditem,
                      onChanged: (String? value) {
                        setState(() {
                          setUpSelecteditem = value;
                          //items as String;
                        });
                      },
                      items: setUpItems
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
                  padding: const EdgeInsets.only(right: 290),
                  child: Text(
                    "Amount",
                    style: AppTextStyles.font14,
                  ),
                ),
                const SizedBox(
                  height: 8,
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
                      value: amountSelecteditem,
                      onChanged: (String? value) {
                        setState(() {
                          amountSelecteditem = value;
                          //items as String;
                        });
                      },
                      items: amountItems
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
                Row(
                  children: [
                    Text(
                      'Pins',
                      style: AppTextStyles.font14,
                    ),
                    const SizedBox(
                      width: 246,
                    ),
                    Text(
                      'Upload file',
                      style: AppTextStyles.font14.copyWith(
                        color: const Color(0xff892BE0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 350,
                  height: 371,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffCBD5E1),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'You can type in multiple pins',
                          hintStyle: AppTextStyles.font12,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
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
                      'Upload Pin',
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
