import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/model/color.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';
import 'package:fluttershopping/model/product3.dart';
import 'package:fluttershopping/screen/detail.dart';

import 'banner.dart';
import 'category.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final carousel = Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('images/banner.jpg'),
      AssetImage('images/1.jpg'),
      AssetImage('images/noodle1.jpg'),
      AssetImage('images/noodle2.jpg'),
      AssetImage('images/noodle3.jpg'),
      AssetImage('images/noodle4.jpg')
    ],
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 2000),
    dotSize: 7.0,
    indicatorBgPadding: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    double ScreenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
          child: Column(
        children:<Widget>[ SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Container(
            height: ScreenHeight / 2.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Stack(
                children: <Widget>[carousel],
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[ SingleChildScrollView(padding: const EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 0.0)),
            Text("Popular Product",
            style:TextStyle(fontSize:20)
            ),
            
          ],
        ),
        SizedBox(height:20.0),
        BannerSlide(),
        Categories(),
        SizedBox(height:10.0),
        Productlist(),
        Categories2(),
        SizedBox(height:10.0),
        Productlist2(),
        Categories3(),
        SizedBox(height:10.0),
        Productlist3(),
        ]
      ),
    );
    
  }
}





