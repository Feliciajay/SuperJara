import 'package:flutter/material.dart';

import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/const/home_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 51,
                ),
                Column(
                  children: [
                    Row(children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(137),
                          color: const Color(0XFFFDE48B),
                          image: const DecorationImage(
                            image: (AssetImage(
                              AppImages.maleimages,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello peace",
                            style: AppTextStyles.font14,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text("Set up your VTU business",
                              style: AppTextStyles.font12
                                  .copyWith(color: const Color(0xff000000))),
                        ],
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/icons/notification.png',
                        ),
                      ),
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                const HomeContainer(
                  text: 'Members',
                ),
                const SizedBox(
                  height: 28,
                ),
                Column(
                  children: [
                    Container(
                      width: 350,
                      height: 140,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Transactions",
                                  style: AppTextStyles.font14,
                                ),
                                const SizedBox(
                                  width: 200,
                                ),
                                PopupMenuButton<String>(
                                  onSelected: (String result) {
                                    setState(() {
                                      _selectedOption = result;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.more_horiz,
                                    color: Color(0xff0d0c224d),
                                    size: 30,
                                  ),
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry<String>>[
                                    const PopupMenuItem<String>(
                                      value: '',
                                      child: Text('Today'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: '',
                                      child: Text('All Time'),
                                    ),
                                  ],
                                ),
                                Text(' $_selectedOption'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 300),
                            child: Text(
                              "24",
                              style: AppTextStyles.font20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Container(
                                  height: 16,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.lightgreen),
                                  child: Text(
                                    "1000",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.font12
                                        .copyWith(color: AppColors.lemon),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Successful",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 16,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.wine),
                                  child: Text(
                                    "12",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.font12
                                        .copyWith(color: AppColors.red),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Pending",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 16,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.wine),
                                  child: Text(
                                    "12",
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.font12
                                        .copyWith(color: AppColors.red),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Failed",
                                  style: AppTextStyles.font12
                                      .copyWith(color: AppColors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    const HomeContainer(
                      text: 'Managers',
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 350,
                          height: 140,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Top Sellers",
                                      style: AppTextStyles.font14,
                                    ),
                                    const SizedBox(
                                      width: 215,
                                    ),
                                    PopupMenuButton<String>(
                                      onSelected: (String result) {
                                        setState(() {
                                          _selectedOption = result;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.more_horiz,
                                        color: Color(0xff0d0c224d),
                                        size: 30,
                                      ),
                                      itemBuilder: (BuildContext context) =>
                                          <PopupMenuEntry<String>>[
                                        const PopupMenuItem<String>(
                                          value: '',
                                          child: Text('Today'),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: '',
                                          child: Text('All Time'),
                                        ),
                                      ],
                                    ),
                                    Text(' $_selectedOption'),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 210),
                                child: Text(
                                  "Data Bundle",
                                  style: AppTextStyles.font20,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 16,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.lightgreen),
                                      child: Text(
                                        "2",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.font12
                                            .copyWith(color: AppColors.lemon),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Airtime top up",
                                      style: AppTextStyles.font12
                                          .copyWith(color: AppColors.grey),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 16,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColors.wine),
                                      child: Text(
                                        "3",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.font12
                                            .copyWith(color: AppColors.red),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Electricity",
                                      style: AppTextStyles.font12
                                          .copyWith(color: AppColors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
