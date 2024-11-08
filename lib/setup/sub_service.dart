import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class SubService extends StatefulWidget {
  const SubService({super.key});

  @override
  State<SubService> createState() => _SubServiceState();
}

class _SubServiceState extends State<SubService> {
  int? selectedIndex;

  List<bool>? _switchStates;

  @override
  void initState() {
    _switchStates = List<bool>.generate(subServices.length, (index) => false);
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
                      "Sub Services",
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
                              'Add To Sub Service',
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
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Text(
                                'All Sub Services',
                                style: AppTextStyles.font16,
                              ),
                              const Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                          children:
                              List.generate(_switchStates!.length, (index) {
                            return Column(
                              children: [
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(width: 1)),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            subServices[index].companyTitle,
                                            style: AppTextStyles.font14,
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            subServices[index].companyValue,
                                            style: AppTextStyles.font12,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, left: 25),
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

class SubServices {
  final String companyTitle;
  final String companyValue;

  SubServices({
    required this.companyTitle,
    required this.companyValue, //required this.val, required this.onChangeMethod1
  });
}

List<SubServices> subServices = [
  SubServices(
    companyTitle: 'Port Harcourt Distribution...',
    companyValue: 'Port Harcourt Distribution Company',
  ),
  SubServices(
    companyTitle: 'Enugu Distribution Company',
    companyValue: 'Port Harcourt Distribution Company',
  ),
  SubServices(
    companyTitle: 'Benin Distribution Company',
    companyValue: 'Port Harcourt Distribution Company',
  ),
  SubServices(
    companyTitle: 'Eko Distribution Company',
    companyValue: 'Port Harcourt Distribution Company',
  ),
  SubServices(
    companyTitle: 'Eko Distribution Company',
    companyValue: 'Port Harcourt Distribution Company',
  ),
  SubServices(
    companyTitle: 'Eko Distribution Company',
    companyValue: 'Port Harcourt Distribution Company',
  ),
];
