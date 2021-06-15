import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/screen/allproduct.dart';
import 'package:fluttershopping/screen/detail.dart';

class Product2 {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double price;

  Product2({
    @required this.id,
    @required this.images,
    @required this.colors,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

List<Product2> demoProducts2 = [
  Product2(
    id: 1,
    images: [
      "images/soba.jpg",
      "images/noodle1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Soba Noodle",
    price: 60,
    description: description,
  ),
  Product2(
    id: 2,
    images: [
      "images/baonoodle.jpg",
      "images/baonoodle2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bao Noodle",
    price: 55,
    description: description,
  ),
  Product2(
    id: 4,
    images: [
      "images/noodle1veget.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vegetarian Noodle",
    price: 55,
    description: description,
  ),
  Product2(
    id: 4,
    images: [
      "images/ramen.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Ramen Noodle",
    price: 55,
    description: description,
  ),
  Product2(
    id: 5,
    images: [
      "images/tradition.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Auspicious Noodle",
    price: 65,
    description: description,
  ),
];

const String description =
    "Special Noodles";


    
class ProductCard2 extends StatelessWidget {
  const ProductCard2({
    Key key,
    this.width = 180,
    this.aspectRatio = 1.02,
    @required this.product2,
    @required this.press,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product2 product2;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 10.0),
      child: GestureDetector(
        onTap: press,
              child: SizedBox(
          width: width,
                  child: Column(
            children: [
              AspectRatio(
                aspectRatio:aspectRatio,
                child:Container(
                  padding:const EdgeInsets.fromLTRB(18, 0, 18, 0),
                  decoration: BoxDecoration(
                    color: Colors.orange[300].withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product2.images[0]),
                )
              ),
              const SizedBox(height:10.0),
              Text(product2.title,
              style: TextStyle(fontSize:17,color:Colors.black),
              maxLines: 2,
              ),
              Row(
                children: [
                  SizedBox(width:15.0),
                  Text("\$${product2.price}",
                  style:TextStyle(fontSize:16,fontWeight:FontWeight.w600,color:Colors.black)),
                  SizedBox(width:80.0),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    width:28.0,
                    height:28.0,
                    decoration:BoxDecoration(color: Colors.grey.withOpacity(0.1),
                    shape:BoxShape.circle,),
                    child:
                  Icon(Icons.arrow_forward_outlined),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Productlist2 extends StatelessWidget {
  const Productlist2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
              child: Row(
        children: [
          ...List.generate(demoProducts2.length, (index) => ProductCard2(product2: demoProducts2[index],
          press: () =>Navigator.pushNamed(
            context, 
            AllProduct.routeName,
            arguments: ProductDetail2(
              product2: demoProducts2[index]),
          ) 
                    )
                    )
        ],
      ),
    );
  }
}
