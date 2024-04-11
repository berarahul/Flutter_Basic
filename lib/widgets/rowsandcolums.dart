import 'package:flutter/material.dart';

// ignore: camel_case_types
class rowsandcolums extends StatelessWidget {
  const rowsandcolums({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 700,
        width: width,
        color: Colors.amber,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
