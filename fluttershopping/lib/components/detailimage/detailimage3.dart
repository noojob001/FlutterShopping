
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product3.dart';

class DetailImage3 extends StatefulWidget {
  const DetailImage3({
    Key key,
    @required this.product3,
  }) : super(key: key);

  final Product3 product3;

  @override
  _DetailImage3State createState() => _DetailImage3State();
}

class _DetailImage3State extends State<DetailImage3> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 240,
        child:AspectRatio(
          aspectRatio: 1,
          child:Image.asset(widget.product3.images[selectedImage]),
        )
        ),
        Row(
    children: <Widget>[
        Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.grey,
                      height: 0,
                      indent: 15,
                      endIndent: 15,
            )
        ),
    ]
        ),
        SizedBox(height:25.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ...List.generate(widget.product3.images.length, (index) => buildSmallPreview(index),
          )
        ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
          child: Container(
        margin: EdgeInsets.only(right:15.0),
            padding:EdgeInsets.all(6.0),
            height:70,
            width:70,
            decoration:BoxDecoration(color: Colors.white,
            borderRadius:BorderRadius.circular(10),
            border: Border.all(color: selectedImage == index ? Colors.yellow : Colors.transparent),
            ),
            child: Image.asset(widget.product3.images[index]),
          ),
    );
  }
}