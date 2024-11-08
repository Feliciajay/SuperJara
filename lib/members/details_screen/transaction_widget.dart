import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:superjara/const/app_textsyle.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 45,
          width: 45,
          child: Image.asset(
            ('assets/icons/telephone.png'),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Transfer from Akinwa...',
                  style: AppTextStyles.font14
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "+N35,000.00",
                  style: AppTextStyles.font14
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                Text('Apr 18th, 20:59',
                    style: AppTextStyles.font12
                        .copyWith(color: const Color(0xff475569))),
                const SizedBox(
                  width: 118,
                ),
                Text(
                  'Successful',
                  style: AppTextStyles.font12
                      .copyWith(color: const Color(0XFF219653)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
