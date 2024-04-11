import 'package:calculator/constants/colors.dart';
import 'package:flutter/material.dart';

class button1 extends StatelessWidget {
  const button1(
      {super.key, required this.label, this.textcolor = Colors.white});
  final String label;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: AppColors.Secondary2Color,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: 36,
        backgroundColor: AppColors.Secondary2Color,
        child: Text(
          label,
          style: TextStyle(
              color: textcolor, fontSize: 32, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
