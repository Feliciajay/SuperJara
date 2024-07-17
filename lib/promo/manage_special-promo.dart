import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/kyc_details/more/more_profile.dart';
import 'package:superjara/promo/add_new_promo.dart';

class ManageSpecialPromo extends StatefulWidget {
  const ManageSpecialPromo({super.key});

  @override
  State<ManageSpecialPromo> createState() => _ManageSpecialPromoState();
}

class _ManageSpecialPromoState extends State<ManageSpecialPromo> {
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
                      "Manage Special Promo",
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
                Container(
                  height: 648,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.add_circle,
                              color: Color(0xff000078),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return AddNewPromo();
                                }));
                              },
                              child: Text(
                                'Add New Promotion',
                                style: AppTextStyles.font14.copyWith(
                                  color: const Color(0xff000078),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 29,
                        ),
                        const PromoWidget(),
                        const SizedBox(
                          height: 13,
                        ),
                        const Divider(
                          height: 5,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const PromoWidget(),
                        const SizedBox(
                          height: 13,
                        ),
                        const Divider(
                          height: 5,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const PromoWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PromoWidget extends StatelessWidget {
  const PromoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'E75A9085',
          style: AppTextStyles.font14,
        ),
        const SizedBox(
          width: 170,
        ),
        Row(
          children: [
            Text(
              'Fixed amount on registration',
              style: AppTextStyles.font12.copyWith(
                color: const Color(0xff475569),
              ),
            ),
            const SizedBox(
              width: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Text(
                    '100.00',
                    style: AppTextStyles.font14,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
