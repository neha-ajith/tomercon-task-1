// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          "Profile",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 30),
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Professional Teacher",
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Nutrients(), Nutrients(), Nutrients()]),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Info(title: "Daily Calories", title2: "1800-2000 Kal"),
                TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("EDIT"),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                )
              ],
            ),
            Info(
                title: "Macronutrient Distribution",
                title2: "Protein (40%) Carbs (35%) Fat (25%)"),
            Info(
                title: "My Collection",
                title2: "Already collected 40 recipies"),
            Info(
                title: "Favourite Meals",
                title2: "45 meals saved on favorites"),
            Row(
              children: [
                Image.asset(
                  "assets/burger.jpg",
                  width: 30,
                ),
                SizedBox(width: 10),
                Image.asset(
                  "assets/burger.jpg",
                  width: 30,
                ),
                SizedBox(width: 10),
                Image.asset(
                  "assets/burger.jpg",
                  width: 30,
                ),
                SizedBox(width: 10),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.red,
                  child: Center(child: Text("45")),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  Info({
    required this.title,
    required this.title2,
    Key? key,
  }) : super(key: key);

  String title;
  String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(title2, style: TextStyle(color: Colors.grey[700]))
        ],
      ),
    );
  }
}

class Nutrients extends StatelessWidget {
  const Nutrients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("35g",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("Protein", style: TextStyle(color: Colors.grey[700]))
      ],
    );
  }
}
