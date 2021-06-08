
import 'package:flutter/material.dart';
import 'package:fluttershopping/model/product.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    Key key,
    @required this.product, 
    @required this.pressSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(padding: EdgeInsets.symmetric(horizontal:35.0),
      
     child: Text(product.title,
      style:Theme.of(context).textTheme.headline6,
      )
      ),
      const SizedBox(height:15),
      Padding(
        padding: EdgeInsets.only(left:20,right: 64),
        child: Text(product.description,
        maxLines: 3,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal:20.0 , vertical: 10.0),
        child: GestureDetector(
          onTap: pressSeeMore,
                        child: Row(children: [
            Text("See more Detail",
            style:TextStyle(
              color:Colors.orange,
              fontWeight: FontWeight.w600 ),
              ),
              SizedBox(width:5.0),
              Icon(Icons.arrow_forward_ios,
              size:12.0 ,
              color: Colors.orange,)
          ],),
        ),
      )
    ],);
  }
}