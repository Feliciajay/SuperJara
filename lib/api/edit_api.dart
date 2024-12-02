import 'package:flutter/material.dart';
import 'package:superjara/api/details/api_details.dart';
import 'package:superjara/const/app_textsyle.dart';

class EditApi extends StatefulWidget {
  const EditApi({super.key});

  @override
  State<EditApi> createState() => _EditApiState();
}

class _EditApiState extends State<EditApi> {
  List<String> items = <String>[
    '100GB',
    '400GB',
    '1 TB',
  ];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 38,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const ApiDetails();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 110,
                    ),
                    Text("Edit Api", style: AppTextStyles.font18),
                  ],
                ),
                const SizedBox(
                  height: 41,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text(
                    "Api Name",
                    style: AppTextStyles.font14
                        .copyWith(color: const Color(0xff475569)),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        helperStyle: AppTextStyles.font14),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300),
                  child: Text(
                    "Vendor",
                    style: AppTextStyles.font14
                        .copyWith(color: const Color(0xff475569)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(width: 1, color: const Color(0xffCBD5E1))),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child:
                            Text('Select option', style: AppTextStyles.font12),
                      ),
                      value: selectedItem,
                      items: items
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
                        selectedItem = item;
                        //items as String;
                      }),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: Text(
                    "Api Key",
                    style: AppTextStyles.font14
                        .copyWith(color: const Color(0xff475569)),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '',
                        helperStyle: AppTextStyles.font14),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  height: 48,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0XFF000078),
                  ),
                  child: Center(
                    child: Text(
                      "Update",
                      style: AppTextStyles.font16
                          .copyWith(color: const Color(0xffFFFFFF)),
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
