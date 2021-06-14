import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/components/body.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: buildAppBar(),
      drawer:new Drawer(
        child:ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(decoration: BoxDecoration(
              color: Colors.orange[300],
            ),accountName: new Text('Name'), accountEmail: Text('@Email'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: NetworkImage('https://cw.lnwfile.com/_/cw/_raw/kt/vi/6g.jpg'),
            ),)
          ],
        )
      ),
      body: Body()
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.orange[300],
      elevation: 0,
      // leading: 
      // IconButton(icon: SvgPicture.asset("images/hamburger.svg"), onPressed: () {  },
      // ),
      actions: <Widget>[
        IconButton(icon: SvgPicture.asset("images/search.svg"), onPressed: () {

        },
        ),
        IconButton(
            icon: SvgPicture.asset("images/cart.svg"),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
      ],
    );
  }
  
}
