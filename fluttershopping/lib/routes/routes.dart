

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttershopping/home.dart';
import 'package:fluttershopping/screen/allproduct.dart';
import 'package:fluttershopping/screen/cart.dart';
import 'package:fluttershopping/screen/detail.dart';


final Map<String, WidgetBuilder> routes = {

DetailScreen.routeName : (context) => DetailScreen(),
DetailScreen2.routeName : (context) => DetailScreen2(),
DetailScreen3.routeName : (context) => DetailScreen3(),
'/cart': (context) => CartPage(),
AllProduct.routeName : (context) => AllProduct(),
HomeScreen.routeName : (context) => HomeScreen(),
};