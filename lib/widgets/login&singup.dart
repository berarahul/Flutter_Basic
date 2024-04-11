import 'package:container_sized/functions/authfunction.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginSingup extends StatefulWidget {
  const loginSingup({super.key});

  @override
  State<loginSingup> createState() => _loginSingupState();
}

// ignore: camel_case_types
class _loginSingupState extends State<loginSingup> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = false;
  String emailAddress = " ";
  String password = " ";
  String username = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login & Singup"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: const ValueKey('username'),
                      decoration:
                          const InputDecoration(hintText: "Enter username"),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return 'username is so small';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: "Enter Email"),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid Email';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    emailAddress = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: const ValueKey('password'),
                decoration:
                    const InputDecoration(hintText: "Enter The Password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return 'pasword is so small';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      singup(emailAddress, password);
                    }
                  },
                  child: isLogin
                      ? const Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )
                      : const Text(
                          "Singup",
                          style: TextStyle(color: Colors.white),
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? const Text("Dont have an Account? Sing up")
                      : const Text("Already Singed Up? Log in"))
            ],
          ),
        ),
      ),
    );
  }
}
