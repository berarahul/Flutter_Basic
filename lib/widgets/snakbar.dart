import 'package:flutter/material.dart';

class SnakBarwidget extends StatelessWidget {
  const SnakBarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snak Bar"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                final snakbar = SnackBar(
                    action: SnackBarAction(
                      label: 'Undo',
                      textColor: Colors.blue,
                      onPressed: () {},
                    ),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    behavior: SnackBarBehavior.floating,
                    // padding: EdgeInsets.all(20),
                    // backgroundColor: Colors.red,
                    content: const Text("This is an error"));
                ScaffoldMessenger.of(context).showSnackBar(snakbar);

                const Duration microseconds = Duration(microseconds: 8000);
              },
              child: const Text("press please")),
        ),
      ),
    );
  }
}
