import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';

class BodyDetail2 extends StatelessWidget {
  final Product2 product2;

  const BodyDetail2({Key key,
  @required this.product2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 240,
        child:AspectRatio(
          aspectRatio: 1,
          child:Image.asset(product2.images[0]),
        )
        )
      ],
    );
  }
}