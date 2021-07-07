import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/BeforeLogin/bodyd.dart';
import 'package:fluttershopping/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttershopping/screen/about.dart';
import 'package:fluttershopping/screen/allproduct.dart';
import 'package:fluttershopping/screen/change.dart';
import 'package:fluttershopping/screen/contact.dart';

import '../home.dart';

class ShopScreend extends StatefulWidget {
  @override
  _ShopScreendState createState() => _ShopScreendState();
}

class _ShopScreendState extends State<ShopScreend> {

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: buildAppBar(),
      drawer:new Drawer(
        child:ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: ListTile(
                title: Text("Home",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Aboutme()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5,0,5,0),
              child: Divider(
                color:Colors.black,
                height:5.0
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: ListTile(
                title: Text("All Product",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5,0,5,0),
              child: Divider(
                color:Colors.black,
                height:5.0
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: ListTile(
                title: Text("About Us",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Aboutme()));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5,0,5,0),
              child: Divider(
                color:Colors.black,
                height:5.0
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            //   child: ListTile(
            //     title: Text("Contact Us",style: TextStyle(fontSize: 18),),
            //     onTap: () {
            //       Navigator.of(context).pop();
            //       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ContactUs()));
            //     },
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: SizedBox(
                    width: 10.0,
                    child: ElevatedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                      },
                      style:ElevatedButton.styleFrom(primary: Colors.orange[300],)
                    )),
            ),

          ],
        )
      ),
      body: Bodyd()
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
        // IconButton(icon: Icon(Icons.search), onPressed: () {

        // },
        // ),
        // IconButton(
        //     icon: Icon(Icons.shopping_cart),
        //     onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
        //                                      return HomeScreen();

        //                                    })),
        //   )
      ],
    );
  }
  
}
