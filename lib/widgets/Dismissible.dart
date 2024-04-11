import 'package:flutter/material.dart';

class dismisible extends StatefulWidget {
  const dismisible({super.key});

  @override
  State<dismisible> createState() => _dismisibleState();
}

class _dismisibleState extends State<dismisible> {
  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Orange', "Apple", "Banana", "Graps", "Mango"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismisible Widget"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index) {
            final fruit = fruits[index];
            return Dismissible(
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.red,
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(fruits[index]),
                      backgroundColor: Colors.green,
                    ));
                  }
                },
                key: Key(fruit),
                background: Container(
                  color: Colors.red,
                ),
                secondaryBackground: Container(
                  color: Colors.green,
                ),
                child: Card(
                  child: ListTile(
                    title: Text(fruits[index]),
                  ),
                ));
          }),
    );
  }
}
