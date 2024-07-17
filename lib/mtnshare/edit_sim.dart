import 'package:flutter/material.dart';
import 'package:superjara/mtnshare/load_bundle.dart';
import 'package:superjara/mtnshare/sim_cards.dart';
import 'package:superjara/const/app_textsyle.dart';

class EditSim extends StatefulWidget {
  const EditSim({super.key});

  @override
  State<EditSim> createState() => _EditSimState();
}

class _EditSimState extends State<EditSim> {
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
                  height: 38,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const SimCards();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 110,
                    ),
                    Text("Edit Sim", style: AppTextStyles.font18),
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 310),
                  child: Text(
                    "Name",
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
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
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
                        hintText: '  09038177869',
                        helperStyle: AppTextStyles.font14),
                  ),
                ),
                SizedBox(
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const LoadBundle();
                        }));
                      },
                      child: Text(
                        "Save",
                        style: AppTextStyles.font16
                            .copyWith(color: const Color(0xffFFFFFF)),
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
