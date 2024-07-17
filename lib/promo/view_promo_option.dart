import 'package:flutter/material.dart';
import 'package:superjara/const/app_colors.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';

class ViewPromoOption extends StatefulWidget {
  const ViewPromoOption({super.key});

  @override
  State<ViewPromoOption> createState() => _ViewPromoOptionState();
}

class _ViewPromoOptionState extends State<ViewPromoOption> {
  bool isSwitched = false;
  bool val1 = true;
  bool val2 = false;
  bool val3 = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {});
  }

  onChangeFunction3(bool newValue3) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, (_) {
                          return const MoreScreen();
                        });
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Setup Default Referral ID",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                SwitchItems(
                  text: 'Special Promotion',
                  subtitle: 'engaging influencer and attached bonus\nto it',
                  val: val2,
                  onChangeMethod1: onChangeFunction2,
                ),
                const Divider(
                  height: 4,
                  color: AppColors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                SwitchItems(
                  text: 'Plan upgrade',
                  subtitle: 'bonus based on upgrading plans',
                  val: val3,
                  onChangeMethod1: onChangeFunction3,
                ),
                const Divider(
                  height: 4,
                  color: AppColors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                SwitchItems(
                  text: 'Commission based',
                  subtitle: 'based on what they set for commission\npricing',
                  val: val2,
                  onChangeMethod1: onChangeFunction2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SwitchItems extends StatefulWidget {
  final String text;
  final String subtitle;
  final bool val;
  final Function onChangeMethod1;
  const SwitchItems(
      {super.key,
      required this.text,
      required this.subtitle,
      required this.val,
      required this.onChangeMethod1});

  @override
  State<SwitchItems> createState() => _SwitchItemsState();
}

class _SwitchItemsState extends State<SwitchItems> {
  bool isSelected = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.text,
              style: AppTextStyles.font14.copyWith(
                color: const Color(0XFF333333),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.subtitle),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
