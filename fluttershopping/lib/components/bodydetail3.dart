import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';
import 'package:fluttershopping/model/product3.dart';

import 'detaildecription/addremove.dart';
import 'detaildecription/detaildescription3.dart';
import 'detailimage/detailimage3.dart';

class BodyDetail3 extends StatelessWidget {
  final Product3 product3;

  const BodyDetail3({Key key,
  @required this.product3
  }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailImage3(product3: product3),
        TopBorderContainer(
          color:Colors.white,
          child:Column(
            children: [
              DetailDescription3(product3: product3, pressSeeMore: (){},
              ),
              TopBorderContainer(
                color: Colors.grey[200],
                child: Row(
                  children: [
                    NumCart(),
                    Removebtn(),

                    // จำนวนของCart

                    AddBtn(),
                  ],
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
