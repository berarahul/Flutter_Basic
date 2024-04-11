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
          backgroundColor: Colors.amber,
          title: const Text('Decoration'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    width: 500,
                    color: Colors.red,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(600),
                          border: Border.all(
                            width: 2,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 172, 255, 7),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 7, 181, 255),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          width: 2,
                          color: Colors.black,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
