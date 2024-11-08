import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({
    super.key,
    required this.enteredPin,
    required this.isPinVisible,
    required this.index,
  });
  final String enteredPin;
  final bool isPinVisible;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            width: 1,
            color: const Color(0xffCBD5E1),
          )),
      child: index < enteredPin.length
          ? Center(
              child: Text(
                enteredPin[index],
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          : null,
    );
    // Container(
    //   height: 48,
    //   width: 48,
    //   margin: const EdgeInsets.all(5.0),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(8),
    //     color: index < enteredPin.length
    //         ? isPinVisible
    //             ? Colors.green
    //             : CupertinoColors.activeBlue
    //         : CupertinoColors.activeBlue.withOpacity(0.1),
    //     border: Border.all(
    //       width: 1,
    //       color: const Color(0xffCBD5E1),
    //     ),
    //   ),
    //   child: isPinVisible && index < enteredPin.length
    //       ? Center(
    //           child: Text(
    //             enteredPin[index],
    //             style: const TextStyle(
    //               fontSize: 17,
    //               color: Colors.black,
    //               fontWeight: FontWeight.w700,
    //             ),
    //           ),
    //         )
    //       : null,
    // );
  }
}
