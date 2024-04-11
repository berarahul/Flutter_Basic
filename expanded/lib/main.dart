import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Expanded"),
            backgroundColor: Colors.lightBlueAccent,
          ),
          drawer: const AboutDialog(
            applicationName: "Expanded",
          ),
          bottomNavigationBar: const Text(
            "Home",
            style: TextStyle(fontSize: 45),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.pink,
                ),
              ),
            ],
          ),
        ));
  }
}
