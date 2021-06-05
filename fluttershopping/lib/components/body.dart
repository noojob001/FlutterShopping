import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/color.dart';

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
      SizedBox(height:10.0),
      Categories(),
      ]
    );
    
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Original Noodles", "Soba Noodles", "Ramen Noodles", "Dumpling", "Gyoza"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.0,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index)=>buildCategory(index)
        )
        );
  }

  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: selectedIndex == index ? kTextColor : kTextLightColor,
          )
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0, left: 15.0),
              height:2.0,
              width:80.0,
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
        ],
      ),
    );
  }
}