import 'package:flutter/material.dart';

class dropdownwidgets extends StatefulWidget {
  const dropdownwidgets({super.key});

  @override
  State<dropdownwidgets> createState() => _dropdownwidgetsState();
}

class _dropdownwidgetsState extends State<dropdownwidgets> {
  String selectedvalue = 'orange';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown"),
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Container(
                height: 50,
                width: 300,
                child: DropdownButton<String>(
                  isExpanded: true,
                  dropdownColor: Colors.grey.shade200,
                  value: selectedvalue,
                  icon: const Icon(Icons.arrow_circle_down_rounded),
                  items: <String>['orange', 'Banana', 'Apple', 'Grapes']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedvalue = newvalue!;
                    });
                  },
                ))),
      ]),
    );
  }
}
