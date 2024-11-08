import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/mtnshare/load_bundle.dart';
import 'package:superjara/mtnshare/mtn_share.dart';
import 'package:superjara/mtnshare/sim_cards.dart';

class MTNDetails extends StatefulWidget {
  const MTNDetails({super.key});

  @override
  State<MTNDetails> createState() => _MTNDetailsState();
}

class _MTNDetailsState extends State<MTNDetails> {
  bool _isObscure = false;
  toggleTextVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

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
                  height: 30,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context, (_) {
                            return const MtnShare();
                          });
                        },
                        child: const Icon(Icons.arrow_back)),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 93,
                    ),
                    PopupMenuButton(
                      itemBuilder: ((context) => [
                            const PopupMenuItem<String>(
                              value: 'Refresh Sim',
                              child: Text('Refresh Sim'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Re-connect Sim',
                              child: Text('Re-connect Sim'),
                            ),
                          ]),
                      onSelected: (value) {
                        ('Selected:$value');
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 46,
                ),
                Container(
                  height: 171,
                  width: 350,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffFDE48B)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "MTN Pulse Balance",
                            style: AppTextStyles.font12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () => toggleTextVisibility(),
                            child: Icon(
                              _isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 38,
                          ),
                          Text(
                            'Transaction history',
                            style: AppTextStyles.font12,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        ],
                      ),
                      Text(
                        _isObscure ? "******" : "350.000GB",
                        style: AppTextStyles.font24,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xffFFFFFF),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Icons.add,
                                  size: 12,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (_) {
                                      return const LoadBundle();
                                    }));
                                  },
                                  child: Text(
                                    "Load Bundle",
                                    style: AppTextStyles.fonts14.copyWith(
                                        color: const Color(0xff333333)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: const Color(0xffFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 12,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Load 1TB Bundle",
                                  style: AppTextStyles.fonts14
                                      .copyWith(color: const Color(0xff333333)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: 350,
                  height: 237,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17, top: 16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Name",
                                style: AppTextStyles.font14
                                    .copyWith(fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 150,
                            ),
                            Text("Gbemi Connect 2",
                                style: AppTextStyles.fonts14
                                    .copyWith(color: const Color(0xff000000))),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text("Number",
                                style: AppTextStyles.font14
                                    .copyWith(fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 160,
                            ),
                            Text("93395853348", style: AppTextStyles.fonts14),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text("Status",
                                style: AppTextStyles.font14
                                    .copyWith(fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 190,
                            ),
                            Container(
                              width: 82,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: const Color(0xffDAFECD),
                              ),
                              child: Center(
                                  child: Text('Connected',
                                      style: AppTextStyles.font11.copyWith(
                                          color: const Color(0xff2A9504)))),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text("Date Updated",
                                style: AppTextStyles.font14
                                    .copyWith(fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 110,
                            ),
                            Text("Apr 18th, 20:59",
                                style: AppTextStyles.fonts14),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [
                            Text("Date Updated",
                                style: AppTextStyles.font14
                                    .copyWith(fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 110,
                            ),
                            Text("Apr 18th, 20:59",
                                style: AppTextStyles.fonts14),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 162,
                ),
                Row(
                  children: [
                    Container(
                      height: 48,
                      width: 165,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: const Color(0XFF000078),
                          )),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return const SimCards();
                            }));
                          },
                          child: Text(
                            "Edit Sim",
                            style: AppTextStyles.font16
                                .copyWith(color: const Color(0xff000078)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return AlertDialog(
                                title: Container(
                                  height: 248,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 45,
                                      ),
                                      Text(
                                        'Remove Sim',
                                        style: AppTextStyles.font18,
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        'Are you sure you want to remove sim number?',
                                        style: AppTextStyles.font16,
                                      ),
                                      const SizedBox(
                                        height: 31,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 48,
                                            width: 123,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xffEEEFEF),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Cancel',
                                                style: AppTextStyles.font16
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff000078)),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Container(
                                            height: 48,
                                            width: 123,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xff000078),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Remove',
                                                style: AppTextStyles.font16
                                                    .copyWith(
                                                        color: const Color(
                                                            0xffEEEFEF)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        height: 48,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0XFF000078),
                        ),
                        child: Center(
                          child: Text(
                            "Remove Sim",
                            style: AppTextStyles.font16
                                .copyWith(color: const Color(0xffFFFFFF)),
                          ),
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
