import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/BeforeLogin/product2d.dart';
import 'package:fluttershopping/BeforeLogin/product3d.dart';
import 'package:fluttershopping/BeforeLogin/productd.dart';
import 'package:fluttershopping/components/banner.dart';
import 'package:fluttershopping/components/category.dart';
import 'package:fluttershopping/model/color.dart';


class Bodyd extends StatefulWidget {
  @override
  _BodydState createState() => _BodydState();
}

class _BodydState extends State<Bodyd> {
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
        SizedBox(height:5.0),
        Productlistd(),
        Categories2(),
        Productlist2d(),
        Categories3(),
        Productlist3d(),
        ]
      ),
    );
    
  }
}





