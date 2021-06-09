import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttershopping/home.dart';
import 'package:fluttershopping/routes/routes.dart';
import 'package:fluttershopping/shop.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange[300],
      ),
      home: ShopScreen(),
      routes: routes,
    );
  }
}
