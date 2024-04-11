import 'package:flutter/material.dart';
import 'theme.dart'; // Import the theme file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myTheme, // Apply the custom theme
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Style And Theme"),
        ),
        body: Text("Hello world",
            style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
