import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/details_account.dart';

class LoadBundle extends StatefulWidget {
  const LoadBundle({super.key});

  @override
  State<LoadBundle> createState() => _LoadBundleState();
}

class _LoadBundleState extends State<LoadBundle> {
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
                            return const Details();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 110,
                    ),
                    Text("Load Bundle",
                        style: AppTextStyles.font18
                            .copyWith(color: const Color(0xff000000))),
                  ],
                ),
                const SizedBox(
                  height: 41,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    "Phone Number",
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
                        hintText: ' 09038177869',
                        helperStyle: AppTextStyles.font14),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Text(
                    "Data Bundle",
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
