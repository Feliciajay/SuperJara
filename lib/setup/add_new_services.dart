import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/setup/available_service.dart';

class AddNewServices extends StatefulWidget {
  const AddNewServices({super.key});

  @override
  State<AddNewServices> createState() => _AddNewServicesState();
}

class _AddNewServicesState extends State<AddNewServices> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context, (_) {
                              return const AvailableService();
                            });
                          },
                          child: const Icon(Icons.arrow_back)),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Add New Service",
                      style: AppTextStyles.font18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  "Main Service",
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
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  "Sub Service",
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
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  'Available Service Name',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTextStyles.font12,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Text(
                  'Service Description',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTextStyles.font12,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 250),
                child: Text(
                  'Service Logo',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Upload png or jpeg',
                              hintStyle: AppTextStyles.font12,
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none),
                        ),
                      ),
                      Icon(Icons.drive_folder_upload)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "Commission Regime",
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
              Padding(
                padding: const EdgeInsets.only(right: 260),
                child: Text(
                  'Default Price',
                  style: AppTextStyles.font14
                      .copyWith(color: const Color(0xff475569)),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 350,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: const Color(0XFFCBD5E1),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: '',
                        hintStyle: AppTextStyles.font12,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text(
                  "Editable Price?",
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
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "Convenience Fee?",
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
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text(
                  "Network Name",
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
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  "Sub Service Group Name",
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
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "Available Service Status",
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
                height: 43,
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
                    'Add',
                    style: AppTextStyles.font16
                        .copyWith(color: const Color(0XFFFFFFFF)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
