import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Flutter App'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
              child: Container(
            height: 800,
            width: 800,
            color: Colors.blue,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: const Center(child: Text("JAY")),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: const Center(child: Text("SREE")),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: const Center(child: Text("RAM")),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: const Center(child: Text("JAY")),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: const Center(child: Text("SREE")),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                  child: const Center(child: Text("RAM")),
                ),
              ],
            ),
            
          ))),
    );
  }
}