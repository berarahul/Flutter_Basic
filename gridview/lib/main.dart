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
  var colorarray = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.yellow,
    Colors.amberAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Grid view"),
              backgroundColor: Colors.blue,
            ),
            body: GridView.builder(
              itemBuilder: (context, index) {
                return Container(
                  color: colorarray[index],
                );
              },
              itemCount: colorarray.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
              ),
              //
              // Column(
              //   children: [
              //     Container(
              //       height: 200,
              //       child: GridView.count(
              //         crossAxisCount: 4,
              //         crossAxisSpacing: 11,
              //         mainAxisSpacing: 11,
              //         children: [
              //           Container(color: colorarray[0]),
              //           Container(color: colorarray[1]),
              //           Container(color: colorarray[2]),
              //           Container(color: colorarray[3]),
              //           Container(color: colorarray[4]),
              //           Container(color: colorarray[5]),
              //           Container(color: colorarray[6]),
              //           Container(color: colorarray[7]),
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: 100,
              //     ),
              //     Container(
              //       height: 200,
              //       child: GridView.extent(
              //         maxCrossAxisExtent: 100,
              //         crossAxisSpacing: 11,
              //         mainAxisSpacing: 11,
              //         children: [
              //           Container(color: colorarray[0]),
              //           Container(color: colorarray[1]),
              //           Container(color: colorarray[2]),
              //           Container(color: colorarray[3]),
              //           Container(color: colorarray[4]),
              //           Container(color: colorarray[5]),
              //           Container(color: colorarray[6]),
              //           Container(color: colorarray[7]),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
            )));
  }
}
