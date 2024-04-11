import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Current Time"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current Time: $time",
                  style: const TextStyle(fontSize: 21),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text("Current Time"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
