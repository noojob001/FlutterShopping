import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';

import 'detaildecription/addremove.dart';
import 'detaildecription/detaildescription1.dart';
import 'detailimage/detailimage1.dart';

class BodyDetail extends StatelessWidget {
  final Product product;

  const BodyDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailImage(product: product),
        TopBorderContainer(
          color: Colors.white,
          child: Column(
            children: [
              DetailDescription(
                product: product,
                pressSeeMore: () {},
              ),
              TopBorderContainer(
                color: Colors.grey[200],
                child: Row(
                  // children: [
                  //   NumCart(),
                  //   Removebtn(),

                  //   // จำนวนของCart

                  //   AddBtn(),
                  // ],
                ),
              ),
              AddcartBtn()
            ],
          ),
        ),
      ],
    );
  }
}


class NumCart extends StatelessWidget {
  const NumCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
    );
  }
}

class TopBorderContainer extends StatelessWidget {
  const TopBorderContainer({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child,
    );
  }
}
