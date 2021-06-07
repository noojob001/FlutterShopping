import 'package:flutter/material.dart';

class BannerSlide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
                  child: Row(
            children: [
              Bannercard(
                image: "images/gyoza.jpg",
                category: "Gyoza",
                press: () {},
              ),
              Bannercard(
                image: "images/noodle1.jpg",
                category: "Original Noodle",
                press: () {},
              ),
              Bannercard(
                image: "images/soba.jpg",
                category: "Soba Noodle",
                press: () {},
              ),
              Bannercard(
                image: "images/dump3.jpg",
                category: "Chinese Dumpling",
                press: () {},
              ),
            ],
          ),
        ),
      ],),
    );
  }
}

class Bannercard extends StatelessWidget {
  const Bannercard({
    Key key, 
   @required this.category, 
   @required this.image,  
   @required this.press,
  }) : super(key: key);
  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      padding: EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width:200.0,
        height:140.0,
        child:ClipRRect(
          borderRadius:BorderRadius.circular(20.0),
          child: Stack(
            children: [
              Image.asset(image,
              width: 200.0,
              height: 140.0,   
              fit:BoxFit.cover),
              Container(
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: [
                  // Color(0xFF343434).withOpacity(0.1),
                  // Color(0xFF343434).withOpacity(0.15),])
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal:15,vertical:10,
                ),
                child: Text.rich(TextSpan(style:TextStyle(color: Colors.white), children: [TextSpan(text: "$category\n",style: TextStyle(fontSize: 18,
                fontWeight:FontWeight.bold
                ),
                ),
                ]
                ),
              ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}