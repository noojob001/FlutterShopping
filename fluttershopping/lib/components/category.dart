
import 'package:flutter/material.dart';
import 'package:fluttershopping/home.dart';
import 'package:fluttershopping/model/color.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Original Noodles"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: SizedBox(
        height: 25.0,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>buildCategory(index)
          )
          ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 140.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:kTextColor
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                height:2.0,
                width:108.0,
                color: Colors.black
              )
          ],
        ),
      ),
    );
  }
}

class Categories2 extends StatefulWidget {

  @override
  _Categories2State createState() => _Categories2State();
}

class _Categories2State extends State<Categories2> {
  List<String> categories = ["Soba Noodles"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: SizedBox(
        height: 25.0,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>buildCategory(index)
          )
          ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:kTextColor
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                height:2.0,
                width:92.0,
                color: Colors.black
              )
          ],
        ),
      ),
    );
  }
}


class Categories3 extends StatefulWidget {

  @override
  _Categories3State createState() => _Categories3State();
}

class _Categories3State extends State<Categories3> {
  List<String> categories = ["Ramen Noodles"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: SizedBox(
        height: 25.0,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>buildCategory(index)
          )
          ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 145.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:kTextColor
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                height:2.0,
                width:103.0,
                color: Colors.black
              )
          ],
        ),
      ),
    );
  }
}

class Categories4 extends StatefulWidget {

  @override
  _Categories4State createState() => _Categories4State();
}

class _Categories4State extends State<Categories4> {
  List<String> categories = ["Dumpling"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: SizedBox(
        height: 25.0,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>buildCategory(index)
          )
          ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 165.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:kTextColor
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                height:2.0,
                width:65.0,
                color: Colors.black
              )
          ],
        ),
      ),
    );
  }
}

class Categories5 extends StatefulWidget {

  @override
  _Categories5State createState() => _Categories5State();
}

class _Categories5State extends State<Categories5> {
  List<String> categories = ["Gyoza"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: SizedBox(
        height: 25.0,
        child:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index)=>buildCategory(index)
          )
          ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 177.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:kTextColor
            )
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                height:2.0,
                width:43.0,
                color: Colors.black
              )
          ],
        ),
      ),
    );
  }
}