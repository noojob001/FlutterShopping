import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/screen/allproduct.dart';
import 'package:fluttershopping/screen/detail.dart';

class Product3 {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double price;

  Product3({
    @required this.id,
    @required this.images,
    @required this.colors,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

List<Product3> demoProducts3 = [
  Product3(
    id: 1,
    images: [
      "images/dump1.jpg",
      "images/noodle4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Dumpling",
    price: 55,
    description: description,
  ),
  Product3(
    id: 2,
    images: [
      "images/dump2.jpg",
      "images/noodle4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Special Dumpling",
    price: 60,
    description: description,
  ),
  Product3(
    id: 4,
    images: [
      "images/dump3.jpg",
      "images/noodle4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Chinese Dumpling",
    price: 55,
    description: description,
  ),
  Product3(
    id: 4,
    images: [
      "images/dump4.jpg",
      "images/noodle4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gyoza",
    price: 75,
    description: description,
  ),
];

const String description =
    "Dumpling";


    
class ProductCard3 extends StatelessWidget {
  const ProductCard3({
    Key key,
    this.width = 180,
    this.aspectRatio = 1.02,
    @required this.product3,
    @required this.press,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product3 product3;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 10.0,bottom: 50.0),
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
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product3.images[0]),
                )
              ),
              const SizedBox(height:10.0),
              Text(product3.title,
              style: TextStyle(fontSize:17,color:Colors.black),
              maxLines: 2,
              ),
              Row(
                children: [
                  SizedBox(width:15.0),
                  Text("\$${product3.price}",
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
      ),
    );
  }
}

class Productlist3 extends StatelessWidget {
  const Productlist3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
              child: Row(
        children: [
          ...List.generate(demoProducts3.length, (index) => ProductCard3(product3: demoProducts3[index],
          press: () =>Navigator.pushNamed(
            context, 
            AllProduct.routeName,
            arguments: ProductDetail3(
              product3: demoProducts3[index]),
          )
          ))
        ],
      ),
    );
  }
}