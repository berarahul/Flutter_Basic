import 'package:flutter/material.dart';

class fromWidgets extends StatefulWidget {
  const fromWidgets({super.key});

  @override
  State<fromWidgets> createState() => _fromWidgetsState();
}

class _fromWidgetsState extends State<fromWidgets> {
  
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final _formkey = GlobalKey<FormState>();

// ---------------------Functions------------------------

  trysubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      _formkey.currentState!.save();
      submitform();
    } else {
      print("Error");
    }
  }

  submitform() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("From Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter First Name'),
                      key: ValueKey('firstName'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'First name should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        firstName = newValue.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter Last Name'),
                      key: ValueKey('lastName '),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Last name should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        lastName = newValue.toString();
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter email'),
                      key: ValueKey('email '),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'email should not be Empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        email = newValue.toString();
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Enter password'),
                      key: ValueKey('password '),
                      validator: (value) {
                        if (value.toString().length <= 5) {
                          return 'Minimum length of password should be 6 ';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (newValue) {
                        password = newValue.toString();
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          trysubmit();
                        },
                        child: Text("Submit"))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
