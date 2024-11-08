import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/promo/add_new_promo.dart';

class EditNewPromo extends StatefulWidget {
  const EditNewPromo({super.key});

  @override
  State<EditNewPromo> createState() => _EditNewPromoState();
}

class _EditNewPromoState extends State<EditNewPromo> {
  List<String> bonusOptionItems = [
    'Select bonus option',
    'Percentage on first deposit ',
    'Fixed amount on first deposit',
  ];
  String? bonusOptionSelectedItem = 'Select bonus option';
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
                          return const AddNewPromo();
                        });
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      "Edit New Promotion",
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
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    'Referral Code',
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
                          hintText: 'e75a9085',
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
                  padding: const EdgeInsets.only(right: 310),
                  child: Text(
                    'User',
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
                    "Bonus Option",
                    style: AppTextStyles.font14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
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
                      value: bonusOptionSelectedItem,
                      items: bonusOptionItems
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
                      onChanged: (item) => setState(() {
                        bonusOptionSelectedItem = item;
                      }),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    'Start Date',
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
                                hintText: 'mm/dd/yyy',
                                hintStyle: AppTextStyles.font12,
                                focusedBorder: InputBorder.none,
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                        const Icon(Icons.calendar_today)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    'End Date',
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
                                hintText: 'mm/dd/yyy',
                                hintStyle: AppTextStyles.font12,
                                focusedBorder: InputBorder.none,
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                        const Icon(Icons.calendar_today)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 58,
                ),
                Row(
                  children: [
                    Container(
                      height: 53,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1),
                        color: const Color(0xffffffff),
                      ),
                      child: Center(
                        child: Text(
                          'Delete Promotion',
                          style: AppTextStyles.font16
                              .copyWith(color: const Color(0xff000078)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 53,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff000078),
                      ),
                      child: Center(
                        child: Text(
                          'Update Promotion',
                          style: AppTextStyles.font16
                              .copyWith(color: const Color(0XFFFFFFFF)),
                        ),
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
