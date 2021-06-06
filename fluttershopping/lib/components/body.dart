import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/color.dart';

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
    dotSize: 6.0,
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
        Categories2(),
        Categories3(),
        Categories4(),
        Categories5()
        ]
      ),
    );
    
  }
}
