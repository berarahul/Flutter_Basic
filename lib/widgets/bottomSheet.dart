import 'dart:math';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class bottomshit extends StatelessWidget {
  const bottomshit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Colors.amber,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  elevation: 0,
                  enableDrag: true,
                  isDismissible: true,
                  context: context,
                  builder: (context) {
                    return const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Rahul"),
                        ),
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Rahul"),
                        ),
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Rahul"),
                        ),
                        ListTile(
                          title: Text("Orange"),
                          subtitle: Text("Rahul"),
                        ),
                      ],
                    );
                  });
            },
            child: const Text(
              "Press the Button",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
