// ignore: file_names
import 'dart:math';

import 'package:calculator/constants/colors.dart';
import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:calculator/widgets/widgets_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final ScreenHeight = MediaQuery.of(context).size.height;
    // ignore: constant_identifier_names
    const Padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    const decoration = BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          CustomTextField(key: super.key), // Add super.key
          const Spacer(),
          Container(
            height: ScreenHeight * 0.6,
            width: double.infinity,
            padding: Padding,
            decoration: decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonList[index]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonList[index + 4]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonList[index + 8]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // Align to the right
                  children: [
                    Container(
                      height: 160,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.SecondaryColor,
                          borderRadius: BorderRadius.circular(40)),
                      child: const Center(
                        child: Text(
                          "=",
                          style: TextStyle(fontSize: 32, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20), // Add the missing SizedBox
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                3, (index) => buttonList[index + 12]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                3, (index) => buttonList[index + 15]),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
