// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   var emailtext = TextEditingController();
//   var passtext = TextEditingController();
//   bool isPasswordVisible = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             appBar: AppBar(
//               title: const Text("Text Field"),
//               backgroundColor: Colors.amber,
//             ),
//             body: Center(
//               child: Container(
//                 width: 300,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextField(
//                       controller: emailtext,
//                       decoration: InputDecoration(
//                         hintText: "Enter Email",
//                         focusedBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(11),
//                             borderSide: const BorderSide(
//                                 color: Color.fromARGB(255, 6, 203, 221),
//                                 width: 2)),
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(11),
//                             borderSide: const BorderSide(
//                                 color: Colors.black, width: 2)),
//                         disabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(11),
//                             borderSide: const BorderSide(
//                                 color: Colors.black, width: 2)),
//                         prefixIcon: const Icon(
//                           Icons.email,
//                           color: Colors.lightBlueAccent,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       height: 11,
//                     ),
//                     TextField(
//                         controller: passtext,
//                         obscureText: true,
//                         obscuringCharacter: "*",
//                         decoration: InputDecoration(
//                           hintText: "Enter Password",
//                           focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(11),
//                               borderSide: const BorderSide(
//                                   color: Color.fromARGB(255, 7, 235, 15),
//                                   width: 2)),
//                           enabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(11),
//                               borderSide: const BorderSide(
//                                   color: Colors.black, width: 2)),
//                           disabledBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(11),
//                               borderSide: const BorderSide(
//                                   color: Colors.black, width: 2)),
//                           suffixIcon: IconButton(
//                             icon: const Icon(Icons.remove_red_eye,
//                                 color: Color.fromARGB(255, 7, 235, 15)),
//                             onPressed: () {
//                               isPasswordVisible = !isPasswordVisible;
//                               print(isPasswordVisible);
//                             },
//                           ),
//                         )),
//                     Container(
//                       height: 12,
//                     ),
//                     ElevatedButton(
//                         onPressed: () {
//                           String uEmail = emailtext.text.toString();
//                           String uPassword = passtext.text.toString();
//                           print("Email $uEmail: password $uPassword");
//                         },
//                         style: ElevatedButton.styleFrom(primary: Colors.orange),
//                         child: const Text(
//                           "Login",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ))
//                   ],
//                 ),
//               ),
//             )));
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var emailtext = TextEditingController();
  var passtext = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Text Field"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailtext,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 6, 203, 221),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                Container(
                  height: 11,
                ),
                TextField(
                  controller: passtext,
                  obscureText: !isPasswordVisible,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 7, 235, 15),
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordVisible
                            ? Icons.remove_red_eye
                            : Icons.visibility_off,
                        color: Color.fromARGB(255, 7, 235, 15),
                      ),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    String uEmail = emailtext.text.toString();
                    String uPassword = passtext.text.toString();
                    print("Email $uEmail: password $uPassword");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
