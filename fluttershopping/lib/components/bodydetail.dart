import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({Key key,
  @required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 240,
        child:AspectRatio(
          aspectRatio: 1,
          child:Image.asset(product.images[0]),
        )
        )
      ],
    );
  }
}