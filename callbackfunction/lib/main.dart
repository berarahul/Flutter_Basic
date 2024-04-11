import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void callback() {
    print("Clicked");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove `const`

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Call BAck Function"),
        ),
        body: ElevatedButton(
            onPressed: callback 
            
            , child: const Text("Call BAck Function Button")),
      ),
    );
  }
}
