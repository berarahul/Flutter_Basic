import 'package:createcustomwidget/widgets/rounded_button.dart';
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
            title: const Text("Custom Widget"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Container(
              width: 200,
              child: roundedbutton(
                btnname: 'Login',
                icon: const Icon(Icons.lock),
                callback: () => {
                  print("Loged In"),
                },
              ),
            ),
          )),
    );
  }
}
