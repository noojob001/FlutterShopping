
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';

class DetailImage extends StatefulWidget {
  const DetailImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _DetailImageState createState() => _DetailImageState();
}

class _DetailImageState extends State<DetailImage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 240,
        child:AspectRatio(
          aspectRatio: 1,
          child:Image.asset(widget.product.images[selectedImage]),
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
          ...List.generate(widget.product.images.length, (index) => buildSmallPreview(index),
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
            child: Image.asset(widget.product.images[index]),
          ),
    );
  }
}