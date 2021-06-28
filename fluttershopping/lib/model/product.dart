import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/screen/allproduct.dart';
import 'package:fluttershopping/screen/detail.dart';
import 'package:scoped_model/scoped_model.dart';

import 'cartmodel.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final int qty;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    @required this.title,
    @required this.price,
    @required this.description,
    @required this.qty,
  });
}

List<Product> _products = [
  Product(
    id: 1,
    images: [
      "images/noodle1s.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Noodle S Size",
    price: 50,
    qty:4,
    description: description,
  ),
  Product(
    id: 2,
    images: [
      "images/noodle1.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Noodle",
    price: 50,
    qty:10,
    description: description,
  ),
  Product(
    id: 3,
    images: [
      "images/noodle1l.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Noodle L Size",
    price: 55,
    qty:7,
    description: description,
  ),
  Product(
    id: 4,
    images: [
      "images/noodlejade.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Jade Noodle",
    price: 50,
    qty:10,
    description: description,
  ),
];

const String description =
    "Noodles";


    
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 180,
    this.aspectRatio = 1.02,
    @required this.product, 
    @required this.press,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product product;
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

class Productlist extends StatelessWidget {
  const Productlist({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CartModel>(
      builder: (context, child, model) {
        return CarouselSlider(items: [...List.generate(_products.length, (index) => ProductCard(product: _products[index],
            press: () =>Navigator.pushNamed(
              context, 
              AllProduct.routeName,
              arguments: ProductDetail(
                product: _products[index]),
            )     
                      
                      )
                      )], options: CarouselOptions(
                      autoPlay: true,
                      height: 280,
                      enableInfiniteScroll: true,
                      reverse: false,
                      initialPage: 0,
                      scrollDirection: Axis.horizontal,
                      ),
          
        );
      //   return SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //           child: Row(
      //     children: [
      //       ...List.generate(_products.length, (index) => ProductCard(product: _products[index],
      //       press: () =>Navigator.pushNamed(
      //         context, 
      //         AllProduct.routeName,
      //         arguments: ProductDetail(
      //           product: _products[index]),
      //       )     
                      
      //                 )
      //                 )
      //     ],
      //   ),
      // );
      }
    );
  }
}