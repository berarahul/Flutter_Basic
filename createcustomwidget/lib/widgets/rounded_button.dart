// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class roundedbutton extends StatelessWidget {
  final String btnname;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const roundedbutton(
      {super.key,
      required this.btnname,
      this.icon,
      this.bgColor = Colors.blue,
      this.textStyle,
      this.callback});

  @override
  Widget build(BuildContext context) {
    // Your widget code here

    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              // Remove the const keyword
              children: [
                icon!,
                Text(
                  btnname,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnname,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          ))),
      // Explicitly returning a widget
    );
  }
}
