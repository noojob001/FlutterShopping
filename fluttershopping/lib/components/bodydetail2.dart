import 'package:flutter/material.dart';
import 'package:fluttershopping/components/detaildecription/detaildescription2.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';

import 'detaildecription/addremove.dart';
import 'detailimage/detailimage2.dart';

class BodyDetail2 extends StatelessWidget {
  final Product2 product2;

  const BodyDetail2({Key key,
  @required this.product2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailImage2(product2: product2),
        TopBorderContainer(
          color:Colors.white,
          child:Column(
            children: [
              DetailDescription2(product2: product2, pressSeeMore: (){},
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
      margin: EdgeInsets.only(top:20),
      padding:EdgeInsets.only(top:20),
      width:double.infinity,
      decoration: BoxDecoration(color: color,
      borderRadius: BorderRadius.only(
      topLeft:Radius.circular(40),
      topRight: Radius.circular(40)
      )
      ),
      child: child,
    );
  }
}
