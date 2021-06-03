import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/profile.dart';

import '../home.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  Profile profile = Profile();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome  :  ",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    auth.currentUser.email,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              SizedBox(height: 30.0),
              SizedBox(
                  width: 200.0,
                  child: ElevatedButton(
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      auth.signOut().then((value) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      });
                    },
                  ))
            ],
          ),
        ));
  }
}
