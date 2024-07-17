import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:superjara/const/app_textsyle.dart';

class WalletComponent extends StatefulWidget {
  const WalletComponent({super.key});

  @override
  State<WalletComponent> createState() => _WalletComponentState();
}

class _WalletComponentState extends State<WalletComponent> {
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
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                  child: Row(
                    children: [
                      Text("Wallet Balance"),
                      SizedBox(
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
                  child: Text(
                    _isObscure ? '*******' : "₦350,000,000.00",
                    style: AppTextStyles.font16,
                  ),
                ),
                const SizedBox(
                  height: 24,
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
                        Icon(
                          Icons.add,
                          size: 18,
                          color: Color(0xff000078),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Fund Wallet",
                          style: AppTextStyles.font14
                              .copyWith(color: Color(0xff000078)),
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
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                  child: Row(
                    children: [
                      Text("Wallet Balance"),
                      SizedBox(
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
                  child: Text(
                    wallet ? '*******' : "₦350,000,000.00",
                    style: AppTextStyles.font16,
                  ),
                ),
                const SizedBox(
                  height: 24,
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
                        Icon(
                          Icons.add,
                          size: 18,
                          color: Color(0xff000078),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Fund Wallet",
                          style: AppTextStyles.font14
                              .copyWith(color: Color(0xff000078)),
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
