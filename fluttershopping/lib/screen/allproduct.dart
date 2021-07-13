import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_share_file/flutter_share_file.dart';
import 'package:fluttershopping/model/cartmodel.dart';
// import 'package:fluttershopping/model/product.dart';
import 'package:scoped_model/scoped_model.dart';


// ignore: must_be_immutable
class AllProduct extends StatelessWidget {
  static String routeName = "/AllProduct";
List<Product> _products = [
  Product(
    id: 1,
    images: 
      "images/noodle1s.jpg",
    
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Noodle S Size",
    price: 50,
    qty:1,
    description: "Test S Size",
  ),
  Product(
    id: 2,
    images: 
      "images/noodle1.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Noodle",
    price: 50,
    qty:1,
    description: "Original Noodle",
  ),
  Product(
    id: 3,
    images: 
      "images/noodle1l.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Noodle L Size",
    price: 55,
    qty:1,
    description: "L Size",
  ),
  Product(
    id: 4,
    images: 
      "images/noodlejade.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Jade Noodle",
    price: 50,
    qty:1,
    description: "Jade Noodle",
  ),
   Product(
    id: 5,
    images: 
      "images/soba.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Soba Noodle",
    price: 60,
    qty:1,
    description: "Soba Noodle",
  ),
  Product(
    id: 6,
    images: 
      "images/baonoodle.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bao Noodle",
    price: 55,
    qty:1,
    description: "Bao Noodle",
  ),
  Product(
    id: 7,
    images: 
      "images/noodle1veget.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Vegetarian Noodle",
    price: 55,
    qty:1,
    description: "Vegetarian Noodle",
  ),
  Product(
    id: 8,
    images: 
      "images/ramen.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Ramen Noodle",
    price: 55,
    qty:1,
    description: "Ramen Noodle",
  ),
  Product(
    id: 9,
    images: 
      "images/tradition.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Auspicious Noodle",
    price: 65,
    qty:1,
    description: "Auspicious Noodle",
  ),
  Product(
    id: 10,
    images: 
      "images/dump1.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Original Dumpling",
    price: 55,
    qty:1,
    description: "Original Dumpling",
  ),
  Product(
    id: 11,
    images: 
      "images/dump2.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Special Dumpling",
    price: 60,
    qty:1,
    description: "Special Dumpling",
  ),
  Product(
    id: 12,
    images: 
      "images/dump3.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Chinese Dumpling",
    price: 55,
    qty:1,
    description: "Chinese Dumpling",
  ),
  Product(
    id: 13,
    images: 
      "images/dump4.jpg",
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gyoza",
    price: 75,
    qty:1,
    description: "Gyoza",
  ),
];



   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text("All Product"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body:
      GridView.builder(
          padding: EdgeInsets.all(8.0),
          itemCount: _products.length,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 14, crossAxisSpacing: 8, childAspectRatio: 0.97),
          itemBuilder: (context, index){
            return ScopedModelDescendant<CartModel>(
        builder: (context, child, model) {
      return Card(
        color: Colors.orange[300].withOpacity(0.8),
      child: Column( children: <Widget>[
        Image.asset(_products[index].images, height: 120, width: 120,),
        Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
        Text("\$"+_products[index].price.toString()),
        // ignore: deprecated_member_use
        OutlineButton(
              child: Text("Add to Cart"),
              onPressed: () => model.addProduct(_products[index])),
              
              // IconButton(icon: Icon(Icons.share), 
              // onPressed: () async {
              //   Directory dir = await getApplicationDocumentsDirectory();
              //   File testFile = new File("C:/Users/JB/Documents/GitHub/FlutterShopping/fluttershopping/images/image.png");
              //   FlutterShareFile.shareImage(dir.path, "image.png", ShareFileType.image);
              // },
              // )
      ])); 
            });
          },
        ),
      

      // ListView.builder(
      //   itemExtent: 80,
      //   itemCount: _products.length,
      //   itemBuilder: (context, index) {
      //     return ScopedModelDescendant<CartModel>(
      //         builder: (context, child, model) {
      //       return ListTile(
      //           leading: Image.network(_products[index].imgUrl),
      //           title: Text(_products[index].title),
      //           subtitle: Text("\$"+_products[index].price.toString()),
      //           trailing: OutlineButton(
      //               child: Text("Add"),
      //               onPressed: () => model.addProduct(_products[index])));
      //     });
      //   },
      // ),

    );
  }
}