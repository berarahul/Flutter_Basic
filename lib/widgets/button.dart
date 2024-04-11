import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(30)),
                  elevation: MaterialStateProperty.all(20),
                  overlayColor: MaterialStateProperty.all(Colors.amber),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {
                print("Button pressed");
              },
              child: const Text("Button",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ))),
                  onPressed: () {
                    print("clik preesed button");
                  },
                  child: const Text(
                    "Press",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
