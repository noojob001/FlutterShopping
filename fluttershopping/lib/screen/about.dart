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
            // ignore: deprecated_member_use
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Image(image:NetworkImage('https://cw.lnwfile.com/_/cw/_raw/01/o1/yq.jpg'),height: MediaQuery.of(context).size.height/4,fit:BoxFit.fill),
              Positioned(
                bottom:-35.0,
                child: CircleAvatar(radius: 60, backgroundColor:  Colors.white,backgroundImage: NetworkImage('https://cw.lnwfile.com/_/cw/_resize/200/200/gv/qd/i3.jpg'),
                )
                ),
              
            ],
          ),
          SizedBox(height:40),
              ListTile(
                title: Text("โรงงานบะหมี่เฮียลิ้ม (บางรัก)",style:TextStyle(fontSize: 18)),
                subtitle:Text("79 ถนนจรัสเวียง แขวงสีลม เขตบางรัก กรุงเทพมหานคร 10500",style:TextStyle(fontSize: 18)),
              )
        ],
      )
      
    );
  }
}