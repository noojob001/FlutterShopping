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
        title: Text("About me"),
      ),
      
    );
  }
}