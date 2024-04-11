// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class container_And_Sized extends StatelessWidget {
  const container_And_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container And Sized Box"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(),
            borderRadius: BorderRadius.circular(2),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(2),
                    bottomRight: Radius.circular(2),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
