import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:superjara/login_forgot_password/container_widget.dart';
import 'package:superjara/signup/fund_wallet.dart';
import 'package:superjara/signup/transaction.dart';

class TransactionPin extends StatefulWidget {
  const TransactionPin({super.key});

  @override
  State<TransactionPin> createState() => _TransactionPinState();
}

class _TransactionPinState extends State<TransactionPin> {
  String enteredPin = '';
  bool isPinVisible = false;

  /// this widget will be use for each digit
  ///  @override
  @override
  void initState() {
    resetPin();
    super.initState();
  }

  void resetPin() {
    enteredPin = '';
  }

  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(
            () {
              if (enteredPin.length < 6) {
                enteredPin += number.toString();
              }
              if (enteredPin.length == 6) {
                Future.delayed(const Duration(milliseconds: 1000), () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FundWallet()));
                });
              } else {}
            },
          );
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context, (_) {
                        return const Transactions();
                      });
                    },
                    child: const Icon(Icons.arrow_back)),
                const SizedBox(
                  height: 39,
                ),
                const Text(
                  "Confirm your transaction pin",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "You will need this pin for every time you need to make a transaction",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: List.generate(
                    6,
                    (index) {
                      return ContainerRow(
                        enteredPin: enteredPin,
                        isPinVisible: isPinVisible,
                        index: index,
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 245,
                ),
                for (var i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => numButton(1 + 3 * i + index),
                      ).toList(),
                    ),
                  ),

                /// 0 digit with back remove
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextButton(onPressed: null, child: SizedBox()),
                      numButton(0),
                      TextButton(
                        onPressed: () {
                          setState(
                            () {
                              if (enteredPin.isNotEmpty) {
                                enteredPin = enteredPin.substring(
                                    0, enteredPin.length - 1);
                              }
                            },
                          );
                        },
                        child: const Icon(
                          Icons.backspace,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                    ],
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