import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
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
    return Column(
      children:<Widget>[ Padding(
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
      ]
    );
    
  }
}