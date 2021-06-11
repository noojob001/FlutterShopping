
import 'package:flutter/material.dart';

class AddBtn extends StatelessWidget {
  const AddBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:20.0),
      child: ElevatedButton(
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
      ),
    );
  }
}

class Removebtn extends StatelessWidget {
  const Removebtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:20.0),
      child: ElevatedButton(
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
      ),
    );
  }
}

class AddcartBtn extends StatelessWidget {
  const AddcartBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: 80.0, right: 80.0, top: 100.0, bottom: 25.0),
      child: Container(
          width: double.infinity,
          height: 50,

          // ignore: deprecated_member_use
          child: RaisedButton(
            child: Text(
              "Add to Cart",
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {},
            color: Colors.orange[400],
            textColor: Colors.white,
            splashColor: Colors.grey,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0),
            ),
          )),
    );
  }
}