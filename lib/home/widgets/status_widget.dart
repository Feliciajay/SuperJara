import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget(
      {super.key, required this.number, required this.status, this.isSuccess});
  final String number;
  final String status;
  final bool? isSuccess;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 16,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: isSuccess == true
                  ? AppColors.lightgreen
                  : const Color(0xffF7EFEF)),
          child: Text(
            number,
            textAlign: TextAlign.center,
            style: AppTextStyles.font12.copyWith(
                color: isSuccess == true ? AppColors.lemon : Colors.red),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          status,
          style: AppTextStyles.font12.copyWith(color: AppColors.grey),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
