import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/mtnshare/edit_sim/edit_sim.dart';
import 'package:superjara/messaging/mtn_details/mtn_details.dart';

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
        backgroundColor: const Color(0xfff7f7f7),
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
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                height: 42,
                                              ),
                                              Text(
                                                'Set Daily Quota',
                                                style: AppTextStyles.fonts14,
                                              ),
                                              const SizedBox(
                                                height: 39,
                                              ),
                                              Text(
                                                textAlign: TextAlign.justify,
                                                'Daily Quota In volume of transaction',
                                                style: AppTextStyles.font14
                                                    .copyWith(
                                                  color:
                                                      const Color(0xff475569),
                                                ),
                                              ),
                                              const SizedBox(
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
                                                    color:
                                                        const Color(0xffCBD5E1),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                width: 348,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xff000078),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Set',
                                                    style: AppTextStyles.font16
                                                        .copyWith(
                                                      color: const Color(
                                                          0xffffffff),
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
                                      return const EditSim();
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
                              height: 13,
                              color: Color.fromARGB(255, 222, 225, 228),
                            ),
                            SwitchItems(
                              text: 'Gbemi Connect 2',
                              val: val3,
                              onChangeMethod1: onChangeFunction3,
                            ),
                            const Divider(
                              height: 13,
                              color: Color.fromARGB(255, 222, 225, 228),
                            ),
                            SwitchItems(
                              text: 'Gbemi Connect 2',
                              val: val2,
                              onChangeMethod1: onChangeFunction2,
                            ),
                            const Divider(
                              height: 13,
                              color: Color.fromARGB(255, 222, 225, 228),
                            ),
                            SwitchItems(
                              text: 'Gbemi Connect 2',
                              val: val3,
                              onChangeMethod1: onChangeFunction3,
                            ),
                            const Divider(
                              height: 13,
                              color: Color.fromARGB(255, 222, 225, 228),
                            ),
                            SwitchItems(
                              text: 'Gbemi Connect 2',
                              val: val2,
                              onChangeMethod1: onChangeFunction2,
                            ),
                            const Divider(
                              height: 13,
                              color: Color.fromARGB(255, 222, 225, 228),
                            ),
                            SwitchItems(
                              text: 'Gbemi Connect 2',
                              val: val3,
                              onChangeMethod1: onChangeFunction3,
                            ),
                            const Divider(
                              height: 13,
                              color: Color.fromARGB(255, 222, 225, 228),
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
  bool _isObscure = false;
  toggleTextVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text(
                    widget.text,
                    style: AppTextStyles.fonts14.copyWith(
                      color: const Color(0XFF000000),
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
              const SizedBox(
                height: 4,
              ),
              Text(
                _isObscure ? '***********' : '93395853348',
                style: AppTextStyles.font14,
              ),
              const SizedBox(
                height: 13,
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => toggleTextVisibility(),
                child: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Transform.scale(
                scale: 0.60,
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
          ),
        ],
      ),
    ]);
  }
}
