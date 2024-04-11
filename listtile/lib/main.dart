import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // var arrnames = ["Rahul", "Arpan", "Rohit", "Subhasis", "Amlan", "Kartick"];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("List Tile"),
            backgroundColor: Colors.amber,
          ),
          body: Center(
            child: Container(
              height: 100,
              width: 100,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/man.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),

          // ListView.separated(
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       leading: Text('$index'),
          //       title: Text(arrnames[index]),
          //       subtitle: Text("Subtitle for $index"),
          //       trailing: const Icon(Icons.arrow_forward),
          //     );
          //   },
          //   itemCount: arrnames.length,
          //   separatorBuilder: (context, index) {
          //     return const Divider(
          //       height: 1,
          //       thickness: 1,
          //     );
          //   },
          // )
        ));
  }
}
