import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:fluttershopping/home.dart';
import 'package:fluttershopping/model/cartmodel.dart';
import 'package:fluttershopping/routes/routes.dart';
import 'package:fluttershopping/screen/productdemo.dart';
import 'package:fluttershopping/shop.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp(
    model:CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.orange[300],
      // ),
      home: ShopScreen(),
      routes: routes,
      ),
      
    );
  }
}
