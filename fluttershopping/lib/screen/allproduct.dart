import 'package:flutter/material.dart';
import 'package:fluttershopping/model/cartmodel.dart';
// import 'package:fluttershopping/model/product.dart';
import 'package:scoped_model/scoped_model.dart';


class AllProduct extends StatelessWidget {
  static String routeName = "/AllProduct";
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
    price: 64.99,
    qty:1,
    description: "Test S Size",
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
    price: 50.5,
    qty:1,
    description: "Original Noodle",
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
    price: 36.55,
    qty:1,
    description: "L Size",
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
    price: 36.55,
    qty:1,
    description: "Jade Noodle",
  ),
];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.8),
        itemBuilder: (context, index){
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card( child: Column( children: <Widget>[
              Image.asset(_products[index].images[0], height: 120, width: 120,),
              Text(_products[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
              Text("\$"+_products[index].price.toString()),
              // ignore: deprecated_member_use
              OutlineButton(
                    child: Text("Add to Cart"),
                    onPressed: () => model.addProduct(_products[index]))
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