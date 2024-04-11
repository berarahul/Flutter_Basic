import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var names = ['Rahul', 'Arpan', 'Sudip', 'Rohit', 'Dipak'];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("listview"),
              backgroundColor: Colors.blue,
            ),
            body: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            names[index],
                            style: const TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              names[index],
                              style: const TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              names[index],
                              style: const TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        names[index],
                        style: const TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        names[index],
                        style: const TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                );
              },
              itemCount: names.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 100,
                  thickness: 1,
                );
              },

              //  ListView.builder(
              //   itemBuilder: (context, index) {
              //     return Text(
              //       names[index],
              //       style: const TextStyle(
              //           fontSize: 21, fontWeight: FontWeight.w500),
              //     );
              //   },
              //   itemCount: names.length,
              //   itemExtent: 400,
              //   scrollDirection: Axis.horizontal,
              // )

              //  Center(
              //   child: ListView(
              //     scrollDirection: Axis.vertical,
              //     reverse: true,
              //     children: const [
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           "One",
              //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           "Two",
              //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           "Three",
              //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           "Four",
              //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           "Five",
              //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           "Six",
              //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            )));
  }
}
