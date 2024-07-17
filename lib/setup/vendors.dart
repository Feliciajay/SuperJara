import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';
import 'package:superjara/setup/add_vendor.dart';

class SupportedVendors extends StatefulWidget {
  const SupportedVendors({super.key});

  @override
  State<SupportedVendors> createState() => _SupportedVendorsState();
}

class _SupportedVendorsState extends State<SupportedVendors> {
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
                      width: 120,
                    ),
                    Text(
                      "Vendors",
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
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return const AddVendor();
                            }));
                          },
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add_circle,
                                color: Color(0xff000078),
                              ),
                              const SizedBox(
                                width: 1,
                              ),
                              Text(
                                'Add Vendor',
                                style: AppTextStyles.font14.copyWith(
                                  color: const Color(0xff000078),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Divider(
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "Iyiinstant",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          const PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Edit Plan',
                                            child: Text('Edit Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Configure Plan',
                                            child: Text('Configure Plan'),
                                          ),
                                          const PopupMenuItem<String>(
                                            value: 'Delete Plan',
                                            child: Text('Delete Plan'),
                                          ),
                                        ]),
                                    onSelected: (value) {
                                      ('Selected:$value');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
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
