import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopping/BeforeLogin/beforelogin.dart';
import 'package:fluttershopping/firestore/liststore.dart';
// ignore: unused_import
import 'package:fluttershopping/home.dart';
import 'package:fluttershopping/model/cartmodel.dart';
import 'package:fluttershopping/provider/google.dart';
import 'package:fluttershopping/routes/routes.dart';
import 'package:fluttershopping/screen/about.dart';
import 'package:fluttershopping/screen/change.dart';
import 'package:fluttershopping/screen/contact.dart';
import 'package:fluttershopping/screen/productdemo.dart';
import 'package:fluttershopping/shop.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
    model:CartModel(),
  ));
}

class MyApp extends StatelessWidget {
  final CartModel model;

  const MyApp({Key key, @required this.model}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(create: (context) => GoogleSignInProvider(),
    child: ScopedModel<CartModel>(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.orange[300],
      // ),
      // home: ShopScreend(),
      home: HomeCloud(),
      routes: routes,
      ),
      
    ),
);
}