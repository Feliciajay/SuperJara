import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/mtnshare/edit_sim.dart';
import 'package:superjara/mtnshare/mtn_details.dart';

class SimCards extends StatefulWidget {
  const SimCards({super.key});

  @override
  State<SimCards> createState() => _SimCardsState();
}

class _SimCardsState extends State<SimCards> {
  bool isSwitched = false;
  bool val1 = true;
  bool val2 = false;
  bool val3 = true;
  bool val4 = true;
  bool val5 = false;
  bool val6 = true;
  bool val7 = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {});
  }

  onChangeFunction3(bool newValue3) {
    setState(() {});
  }

  onChangeFunction4(bool newValue4) {
    setState(() {});
  }

  onChangeFunction5(bool newValue5) {
    setState(() {});
  }

  onChangeFunction6(bool newValue6) {
    setState(() {});
  }

  onChangeFunction7(bool newValue7) {
    setState(() {});
  }

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
                height: 20,
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context, (_) {
                          return const MTNDetails();
                        });
                      },
                      child: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 110,
                  ),
                  const Text(
                    "Sim Cards",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  PopupMenuButton(
                    itemBuilder: ((context) => [
                          PopupMenuItem<String>(
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 287,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 42,
                                          ),
                                          Text(
                                            'Set Daily Quota',
                                            style: AppTextStyles.font14,
                                          ),
                                          SizedBox(
                                            height: 39,
                                          ),
                                          Text(
                                            'Daily Quota In volume of transaction',
                                            style:
                                                AppTextStyles.font14.copyWith(
                                              color: Color(0xff475569),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 350,
                                            height: 52,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0xffCBD5E1),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 348,
                                            height: 48,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Color(0xff000078),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Set',
                                                style: AppTextStyles.font16
                                                    .copyWith(
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            value: 'Set Daily Quota Count',
                            child: const Text('Set Daily Quota Count'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Reset Vending Activity',
                            child: Text('Reset Vending Activity'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'load Bundle For Others',
                            child: Text('load Bundle For Others'),
                          ),
                        ]),
                    onSelected: (value) {
                      ('Selected:$value');
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 38,
              ),
              Container(
                height: 42,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(
                    0XFFEBEBEB,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefix: const Icon(Icons.search),
                    hintStyle: AppTextStyles.font14,
                    border: InputBorder.none,
                    hintText: ' Search for a sim',
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                height: 750,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 14),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.add_circle,
                              color: Color(0xff000078),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return EditSim();
                                }));
                              },
                              child: Text(
                                'Add Sim',
                                style: AppTextStyles.font14.copyWith(
                                  color: const Color(0xff000078),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val2,
                          onChangeMethod1: onChangeFunction2,
                        ),
                        const Divider(
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val3,
                          onChangeMethod1: onChangeFunction3,
                        ),
                        const Divider(
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val2,
                          onChangeMethod1: onChangeFunction2,
                        ),
                        const Divider(
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val3,
                          onChangeMethod1: onChangeFunction3,
                        ),
                        const Divider(
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val2,
                          onChangeMethod1: onChangeFunction2,
                        ),
                        const Divider(
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val3,
                          onChangeMethod1: onChangeFunction3,
                        ),
                        const Divider(
                          height: 4,
                          color: AppColors.grey,
                        ),
                        SwitchItems(
                          text: 'Gbemi Connect 2',
                          val: val3,
                          onChangeMethod1: onChangeFunction3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class SwitchItems extends StatefulWidget {
  final String text;
  final bool val;
  final Function onChangeMethod1;
  const SwitchItems({
    super.key,
    required this.text,
    required this.val,
    required this.onChangeMethod1,
  });

  @override
  State<SwitchItems> createState() => _SwitchItemsState();
}

class _SwitchItemsState extends State<SwitchItems> {
  bool isSelected = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                Text(
                  widget.text,
                  style: AppTextStyles.font14.copyWith(
                    color: const Color(0XFF333333),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 15,
                  width: 15,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff2A9504),
                    ),
                  ),
                  child: Container(
                    height: 9,
                    width: 9,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff2A9504),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text('93395853348'),
                const SizedBox(
                  width: 150,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Icon(Icons.visibility),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
