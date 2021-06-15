import 'package:flutter/material.dart';

class Aboutme extends StatefulWidget {

  @override
  _AboutmeState createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange[200],
        title: Text("About Us"),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image(image:NetworkImage('https://cw.lnwfile.com/_/cw/_raw/01/o1/yq.jpg'),height: 150,fit:BoxFit.fill)
            ],
          )
        ],
      )
      
    );
  }
}