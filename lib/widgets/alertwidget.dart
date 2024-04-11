import 'package:flutter/material.dart';

class alertwidget extends StatelessWidget {
  const alertwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert widget"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDialog(context);
            },
            child: Text("Show Alert")),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          scrollable: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
          title: Text("This is an alert message"),
          content: SingleChildScrollView(
            child: ListBody(children: [
              Text("This is a demo message"),
              Text("This is a Rahul bera")
            ]),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text("Approved")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel")),
          ],
        );
      });
}
