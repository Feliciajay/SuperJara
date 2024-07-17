import 'package:flutter/material.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class MainServices extends StatefulWidget {
  const MainServices({super.key});

  @override
  State<MainServices> createState() => _MainServicesState();
}

class _MainServicesState extends State<MainServices> {
  int? selectedIndex;

  List<bool>? _switchStates;

  List<SubServices> _filteredItems = [];

  @override
  void initState() {
    _filteredItems = subServices;
    _switchStates = List<bool>.generate(subServices.length, (index) => false);
    super.initState();
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = subServices
          .where((element) =>
              element.companyTitle.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        "Main Services",
                        style: AppTextStyles.font18,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 42,
                  width: 350,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffEDEDED),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Color(0xff4F4F4F),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: "Search for a name",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                          ),
                          onChanged: _filterItems,
                        ),
                      ),
                    ],
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
                          Column(
                            children:
                                List.generate(_filteredItems.length, (index) {
                              return Column(
                                children: [
                                  SizedBox(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
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
                                                  _filteredItems[index]
                                                      .companyTitle,
                                                  style: AppTextStyles.font14,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5, left: 100),
                                          child: Switch(
                                            value: _switchStates![index],
                                            onChanged: (value) {
                                              setState(() {
                                                _switchStates![index] = value;
                                              });
                                            },
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
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
      ),
    );
  }
}

class SubServices {
  final String companyTitle;

  SubServices({
    required this.companyTitle,
  });
}

List<SubServices> subServices = [
  SubServices(
    companyTitle: 'Broadband Internet',
  ),
  SubServices(
    companyTitle: 'Cable Subscription',
  ),
  SubServices(
    companyTitle: 'Airtime Topup',
  ),
  SubServices(
    companyTitle: 'Education Bills',
  ),
  SubServices(
    companyTitle: 'Electricity',
  ),
  SubServices(
    companyTitle: 'Data Topup',
  ),
  SubServices(
    companyTitle: 'Airtime to Cash',
  ),
  SubServices(
    companyTitle: 'Airtime to Cash',
  ),
];
