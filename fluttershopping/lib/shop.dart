import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/svg.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
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
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: 
      IconButton(icon: SvgPicture.asset("images/hamburger.svg"), onPressed: () {  },
      ),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("images/search.svg"), onPressed: () {

        },
        ),
        IconButton(icon: SvgPicture.asset("images/cart.svg"), onPressed: () {

        },
        )
      ],
    );
  }
  
}
