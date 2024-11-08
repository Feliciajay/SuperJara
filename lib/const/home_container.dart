import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';

class HomeContainer extends StatefulWidget {
  final String text;
  const HomeContainer({
    required this.text,
    super.key,
  });

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  String _selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    Row(
                      children: [
                        Text(
                          widget.text,
                          style: AppTextStyles.font14,
                        ),
                        const SizedBox(
                          width: 220,
                        ),
                        PopupMenuButton<String>(
                          onSelected: (String result) {
                            setState(() {
                              _selectedOption = result;
                            });
                          },
                          child: const Icon(
                            Icons.more_horiz,
                            color: Color(0xff0d224d),
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
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 300),
                child: Text(
                  "24",
                  style: AppTextStyles.font20,
                ),
              ),
              const SizedBox(
                height: 12,
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
                        "12",
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font12
                            .copyWith(color: AppColors.lemon),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Active",
                      style:
                          AppTextStyles.font12.copyWith(color: AppColors.grey),
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
                        style:
                            AppTextStyles.font12.copyWith(color: AppColors.red),
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "In active",
                      style:
                          AppTextStyles.font12.copyWith(color: AppColors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
