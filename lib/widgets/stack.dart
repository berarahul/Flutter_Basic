import 'package:flutter/material.dart';

class stackwidgets extends StatelessWidget {
  const stackwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Stack"),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(children: [
            Positioned(
              bottom: 10,
              left: 50,
              child: Container(
                height: 400,
                width: 400,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              bottom: 12,
              left: 45,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
