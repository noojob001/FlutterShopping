import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/model/color.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';
import 'package:fluttershopping/model/product3.dart';

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
        SizedBox(height:5.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                  child: Row(
            children: [
              ...List.generate(demoProducts.length, (index) => ProductCard(product: demoProducts[index],))
            ],
          ),
        ),
        Categories2(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                  child: Row(
            children: [
              ...List.generate(demoProducts2.length, (index) => ProductCard2(product2: demoProducts2[index],))
            ],
          ),
        ),
        Categories3(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                  child: Row(
            children: [
              ...List.generate(demoProducts3.length, (index) => ProductCard3(product3: demoProducts3[index],))
            ],
          ),
        ),
        ]
      ),
    );
    
  }
}
