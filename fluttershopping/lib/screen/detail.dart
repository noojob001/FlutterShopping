import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/components/bodydetail.dart';
import 'package:fluttershopping/components/bodydetail2.dart';
import 'package:fluttershopping/components/bodydetail3.dart';
import 'package:fluttershopping/model/product.dart';
import 'package:fluttershopping/model/product2.dart';
import 'package:fluttershopping/model/product3.dart';
import 'backbutton.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ProductDetail arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: DetailAppBar(),
      body:BodyDetail(product: arguments.product,),
    );
  }
}

class DetailAppBar extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0 ,0 ),
        child: Row(
          children: [
            BackButtonD(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetail {
  final Product product;

  ProductDetail({@required this.product});
}

class ProductDetail2 {
  final Product2 product2;

  ProductDetail2({@required this.product2});
}

class DetailScreen2 extends StatelessWidget {
  static String routeName = "/details2";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ProductDetail2 arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: DetailAppBar(),
      body:BodyDetail2(product2: arguments.product2,),
    );
  }
}

class DetailAppBar2 extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0 ,0 ),
        child: Row(
          children: [
            BackButtonD(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetail3 {
  final Product3 product3;

  ProductDetail3({@required this.product3});
}


class DetailScreen3 extends StatelessWidget {
  static String routeName = "/details3";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ProductDetail3 arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: DetailAppBar(),
      body:BodyDetail3(product3: arguments.product3,),
    );
  }
}

class DetailAppBar3 extends PreferredSize {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 0 ,0 ),
        child: Row(
          children: [
            BackButtonD(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}