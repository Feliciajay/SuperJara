import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';

class HomeContainer extends StatefulWidget {
  final String title;
  final String value;
  final Widget catergoryValues;
  const HomeContainer({
    required this.title,
    required this.value,
    required this.catergoryValues,
    super.key,
  });

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  String _selectedOption = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: AppTextStyles.font12,
              ),
              Text(
                widget.value,
                style: AppTextStyles.font20,
              ),
              widget.catergoryValues
            ],
          ),
          Spacer(),
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
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
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
    );
  }
}
