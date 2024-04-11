import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stack Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          height: 250,
          width: 250,
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.amber,
              ),
              Positioned(
                left: 12,
                right: 12,
                bottom: 12,
                top: 12,
                child: Container(
                  height: 130,
                  width: 130,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
