import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Card Widgets"),
        ),
        body: const Center(
            child: Card(
                shadowColor: Colors.blue,
                elevation: 20,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Card Widgets",
                    style: TextStyle(fontSize: 21),
                  ),
                ))),
      ),
    );
  }
}
