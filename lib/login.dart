// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.pink[200],
          body: Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Image.asset("assets/healthifyme.jpg", width: 150),
                          TextField(
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  focusColor: Colors.black)),
                          TextField(
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  focusColor: Colors.black)),
                          TextButton(onPressed: () {}, child: Text("Login")),
                          TextButton(
                              onPressed: () {},
                              child: Text("Forgot password?")),
                          Row(
                            children: [
                              Text("Don't have an account?"),
                              TextButton(
                                  onPressed: () {}, child: Text("Create"))
                            ],
                          )
                        ],
                      ),
                      height: double.infinity,
                      width: double.infinity)))),
    );
  }
}
