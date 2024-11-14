import 'package:flutter/material.dart';
import 'package:superjara/const/app_images.dart';
import 'package:superjara/const/app_textsyle.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
