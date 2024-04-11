import 'dart:html';

import 'package:flutter/material.dart';

class imagewidget extends StatelessWidget {
  const imagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 20 ,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ));
  }
}
