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
            title: const Text("Margin_pading"),
            backgroundColor: Colors.amber,
          ),
          body: Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(11),
              child: const Padding(
                padding: EdgeInsets.only(top: 21),
                child: Text("Hello Flutter"),
              )),
        ));
  }
}
