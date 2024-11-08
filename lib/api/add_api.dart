import 'package:flutter/material.dart';
import 'package:superjara/api/api.dart';
import 'package:superjara/const/app_textsyle.dart';

class AddApi extends StatefulWidget {
  const AddApi({super.key});

  @override
  State<AddApi> createState() => _AddApiState();
}

class _AddApiState extends State<AddApi> {
  List<String> items = <String>[
    '100GB',
    '400GB',
    '1 TB',
  ];
  String? selectedItem = '100GB';
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
                            return const API();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 110,
                    ),
                    Text("Add Api", style: AppTextStyles.font18),
                  ],
                ),
                const SizedBox(
                  height: 41,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
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
                        hintText: ' Gbemi Connect 2',
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
                      "Save",
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
