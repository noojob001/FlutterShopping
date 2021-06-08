
import 'package:flutter/material.dart';

class AddBtn extends StatelessWidget {
  const AddBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(), primary: Colors.white),
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Text(
          '+',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      onPressed: () {},
    );
  }
}

class Removebtn extends StatelessWidget {
  const Removebtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(), primary: Colors.white),
      child: Container(
        width: 40,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Text(
          '-',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      onPressed: () {},
    );
  }
}