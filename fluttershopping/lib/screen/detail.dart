import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/model/product.dart';
import 'backbutton.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: DetailAppBar(),
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
