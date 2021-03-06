import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershopping/components/body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttershopping/provider/google.dart';
import 'package:fluttershopping/screen/about.dart';
import 'package:fluttershopping/screen/allproduct.dart';
import 'package:fluttershopping/screen/change.dart';
import 'package:fluttershopping/screen/contact.dart';
import 'package:fluttershopping/screen/forgotpass.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final user = FirebaseAuth.instance.currentUser;
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: buildAppBar(),
      drawer:new Drawer(
        child:ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(decoration: BoxDecoration(
              color: Colors.orange[300],
            ),accountName: new Text(auth.currentUser.email,
                    textAlign: TextAlign.right,style: TextStyle(fontSize: 17),
            ), 
            accountEmail: Text(''),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: NetworkImage('https://cw.lnwfile.com/_/cw/_raw/kt/vi/6g.jpg'),
            ),),
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
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AllProduct()));
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
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: ListTile(
                title: Text("Change Password",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ForgotPassword();
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
            // Padding(
            //   padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
            //   child: SizedBox(
            //         width: 10.0,
            //         child: ElevatedButton(
            //           child: Text(
            //             "Change Password",
            //             style: TextStyle(fontSize: 20),
            //           ),
            //           onPressed: () {
            //               Navigator.pushReplacement(context,
            //                   MaterialPageRoute(builder: (context) {
            //                 return ChangeID();
            //               }));
            //           },
            //           style:ElevatedButton.styleFrom(primary: Colors.orange[300],)
            //         )),
            // ),


            Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 40, 0),
              child: SizedBox(
                    width: 10.0,
                    child: ElevatedButton(
                      child: Text(
                        "Logout",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        auth.signOut().then((value) {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                        });
                        final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                        provider.logout();
                      },
                      style:ElevatedButton.styleFrom(primary: Colors.orange[300],)
                    )),
            )
          ],
        )
      ),
      body: Body()
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.orange[400],
      elevation: 0,
      // leading: 
      // IconButton(icon: SvgPicture.asset("images/hamburger.svg"), onPressed: () {  },
      // ),
      actions: <Widget>[
        // IconButton(icon: Icon(Icons.search), onPressed: () {

        // },
        // ),
        IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
      ],
    );
  }
  
}
