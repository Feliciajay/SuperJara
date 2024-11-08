import 'package:flutter/material.dart';

import 'package:superjara/const/app_textsyle.dart';

class SwitchItems extends StatelessWidget {
  final String text;
  final bool val;
  final void Function(bool)? onChangeMethod1;

  final bool? isSwitched;
  const SwitchItems({
    super.key,
    required this.text,
    required this.val,
    required this.onChangeMethod1,
    this.isSwitched,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: AppTextStyles.font14.copyWith(
                  color: const Color(0XFF333333),
                )),
            Transform.scale(
              scale: 0.45,
              child: Switch(
                value: val,
                onChanged: onChangeMethod1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
