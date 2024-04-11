import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
            backgroundColor: Colors.amber,
            title: Text("Scroll View"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Color.fromARGB(255, 74, 195, 191),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.blue,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 11),
                            height: 200,
                            width: 200,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Color.fromARGB(255, 195, 74, 161),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.blue,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Color.fromARGB(255, 54, 244, 171),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    height: 200,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
