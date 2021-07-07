import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopping/home.dart';
import 'package:fluttershopping/screen/login.dart';
import 'package:fluttershopping/shop.dart';

class GoogleHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            return ShopScreen();
          }
          else if (snapshot.hasError) {
            return Center(child: Text("Something Went Wrong"));
          }
          else {
          return LoginScreen();
          }
        },
      )
      
    );
  }
}