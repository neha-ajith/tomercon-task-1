// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_1/profile.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.red,
          body: Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 50, left: 25, right: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/healthifyme.jpg", width: 150),
                            Column(
                              children: [
                                TextField(
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        hintText: 'Username',
                                        focusColor: Colors.black)),
                                SizedBox(height: 15),
                                TextField(
                                    decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        hintText: 'Password',
                                        focusColor: Colors.black)),
                                SizedBox(height: 25),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  width: double.infinity,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Profile()),
                                      );
                                    },
                                    child: Text("Login"),
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white)),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Forgot password?",
                                        style: TextStyle(
                                            color: Colors.grey[600]))),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have an account?"),
                                SizedBox(width: 10),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Create"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.red),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      height: double.infinity,
                      width: double.infinity)))),
    );
  }
}
