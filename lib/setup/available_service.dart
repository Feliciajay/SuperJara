import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';
import 'package:superjara/setup/add_new_services.dart';

class AvailableService extends StatefulWidget {
  const AvailableService({super.key});

  @override
  State<AvailableService> createState() => _AvailableServiceState();
}

class _AvailableServiceState extends State<AvailableService> {
  int? selectedIndex;

  List<bool>? _switchStates;

  @override
  void initState() {
    _switchStates =
        List<bool>.generate(availableServices.length, (index) => false);
    super.initState();
  }

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
                              return const MoreScreen();
                            });
                          },
                          child: const Icon(Icons.arrow_back)),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Text(
                      "Available Services",
                      style: AppTextStyles.font18,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 42,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEDEDED),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff4F4F4F),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search for a name",
                              hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                              focusedBorder: InputBorder.none,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 592,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 5),
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
                            Text(
                              'Add To Main Service',
                              style: AppTextStyles.font14.copyWith(
                                color: const Color(0xff000078),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 27,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return AddNewServices();
                              }));
                            },
                            child: Row(
                              children: [
                                Text(
                                  'All Available Services',
                                  style: AppTextStyles.font16,
                                ),
                                const Icon(Icons.arrow_drop_down),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Column(
                          children:
                              List.generate(_switchStates!.length, (index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 150),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            availableServices[index].title,
                                            style: AppTextStyles.font14,
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            availableServices[index].subtitle,
                                            style: AppTextStyles.font12,
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            availableServices[index].amount,
                                            style: AppTextStyles.font12
                                                .copyWith(
                                                    color: const Color(
                                                        0xff529C38)),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(),
                                      child: Switch(
                                        value: _switchStates![index],
                                        onChanged: (value) {
                                          setState(() {
                                            _switchStates![index] = value;
                                          });
                                        },
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const Divider(
                                  height: 5,
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            );
                          }),
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
    );
  }
}

class AvailableServices {
  final String title;
  final String subtitle;
  final String amount;

  AvailableServices({
    required this.title,
    required this.subtitle,
    required this.amount,
  });
}

List<AvailableServices> availableServices = [
  AvailableServices(
    title: 'Special SME 300MB',
    subtitle: 'Special SME 300MB',
    amount: '300.00',
  ),
  AvailableServices(
    title: 'Special SME 300MB',
    subtitle: 'Special SME 300MB',
    amount: '300.00',
  ),
  AvailableServices(
    title: 'Special SME 300MB',
    subtitle: 'Special SME 300MB',
    amount: '300.00',
  ),
  AvailableServices(
    title: 'Special SME 300MB',
    subtitle: 'Special SME 300MB',
    amount: '300.00',
  ),
  AvailableServices(
    title: 'Special SME 300MB',
    subtitle: 'Special SME 300MB',
    amount: '300.00',
  ),
];
