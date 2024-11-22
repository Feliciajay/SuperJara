//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_textsyle.dart';
import 'package:superjara/members/details_screen/user_details/data/model/fetch_user_details.response.dart';
import 'package:superjara/members/details_screen/user_details/data/notifier/fetch_user_details_notifier.dart';

class WalletComponent extends ConsumerStatefulWidget {
  const WalletComponent({super.key});

  @override
  ConsumerState<WalletComponent> createState() => _WalletComponentState();
}

class _WalletComponentState extends ConsumerState<WalletComponent> {
  late final UserDetailsData data;

  bool _isObscure = false;

  toggleTextVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  bool wallet = false;

  walletVisibility() {
    setState(() {
      wallet = !wallet;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userDetailsState = ref.watch(fetchUserDetailsNotifierProvider);

    final data = userDetailsState.fetchUserDetailsResponse?.data.first;
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Stack(
          children: [
            Container(
              height: 171,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffE5E5FF)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                  child: Row(
                    children: [
                      Text("Wallet Balance",
                          style: AppTextStyles.font12
                              .copyWith(fontWeight: FontWeight.w400)),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          onTap: () {
                            toggleTextVisibility();
                          },
                          child: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(_isObscure ? '*******' : data!.walletBalance,
                      style: AppTextStyles.font24
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 40,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          size: 18,
                          color: Color(0xff000078),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Fund Wallet",
                          style: AppTextStyles.font14
                              .copyWith(color: const Color(0xff000078)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        Stack(
          children: [
            Container(
              height: 171,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffFBE8FC)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                  child: Row(
                    children: [
                      Text("Wallet Balance",
                          style: AppTextStyles.font12
                              .copyWith(fontWeight: FontWeight.w400)),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          walletVisibility();
                        },
                        child: Icon(
                          wallet ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(wallet ? '*******' : data!.walletBalance,
                      style: AppTextStyles.font24
                          .copyWith(fontWeight: FontWeight.w600)),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 40,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.add,
                          size: 18,
                          color: Color(0xff000078),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Fund Wallet",
                          style: AppTextStyles.font14
                              .copyWith(color: const Color(0xff000078)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
