import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';
import 'package:fluttershopping/model/product3.dart';

class BodyDetail3 extends StatelessWidget {
  final Product3 product3;

  const BodyDetail3({Key key,
  @required this.product3
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 240,
        child:AspectRatio(
          aspectRatio: 1,
          child:Image.asset(product3.images[0]),
        )
        )
      ],
    );
  }
}