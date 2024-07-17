import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/payment_plan/add_new_plan.dart';
import 'package:superjara/payment_plan/payment_details.dart';

class PaymentPlan extends StatefulWidget {
  const PaymentPlan({super.key});

  @override
  State<PaymentPlan> createState() => _PaymentPlanState();
}

class _PaymentPlanState extends State<PaymentPlan> {
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
              child: Text(
                "Payment Plan",
                style: AppTextStyles.font18,
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
              height: 24,
            ),
            Container(
              height: 592,
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
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return AddNewPlan();
                              }));
                            },
                            child: Text(
                              'Add New Plan',
                              style: AppTextStyles.font14.copyWith(
                                color: const Color(0xff000078),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Staff",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "NGN 10,000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 220,
                                  ),
                                  PopupMenuButton(
                                    itemBuilder: ((context) => [
                                          PopupMenuItem<String>(
                                            value: 'View Details',
                                            child: GestureDetector(
                                                onTap: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (_) {
                                                    return const PaymentDetails();
                                                  }));
                                                },
                                                child:
                                                    const Text('View Details')),
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Amara Links",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "NGN 10,000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Prebore",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "NGN 10,000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Resellers",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "NGN 10,000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Entry Plan",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "NGN 10,000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Default",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "NGN 10,000",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
