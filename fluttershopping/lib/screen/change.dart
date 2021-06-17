import 'package:flutter/material.dart';

class ChangeID extends StatefulWidget {

  @override
  _ChangeIDState createState() => _ChangeIDState();
}

class _ChangeIDState extends State<ChangeID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange[200],
        title:Text("Change Email / Password",style:TextStyle(color: Colors.black))
      ),
      body:Container(
        
      )
    );
  }
}