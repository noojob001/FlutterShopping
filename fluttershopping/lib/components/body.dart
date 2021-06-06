import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/model/color.dart';
import 'package:fluttershopping/model/product.dart';

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
        Categories3(),
        Categories4(),
        Categories5()
        ]
      ),
    );
    
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 180,
    this.aspectRatio = 1.02,
    @required this.product,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 10.0),
      child: SizedBox(
        width: width,
                child: Column(
          children: [
            AspectRatio(
              aspectRatio:aspectRatio,
              child:Container(
                padding:const EdgeInsets.fromLTRB(18, 0, 18, 0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(product.images[0]),
              )
            ),
            const SizedBox(height:10.0),
            Text(product.title,
            style: TextStyle(fontSize:17,color:Colors.black),
            maxLines: 2,
            ),
            Row(
              children: [
                SizedBox(width:15.0),
                Text("\$${product.price}",
                style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,color:Colors.black)),
                SizedBox(width:80.0),
                Container(
                  padding: EdgeInsets.all(4.0),
                  width:28.0,
                  height:28.0,
                  decoration:BoxDecoration(color: Colors.grey.withOpacity(0.1),
                  shape:BoxShape.circle,),
                  child:
                SvgPicture.asset("images/cart.svg"),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
