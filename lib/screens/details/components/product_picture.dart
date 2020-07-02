import 'package:Ecommerce_app/res/constant.dart';
import 'package:flutter/material.dart';

class ProductPic extends StatelessWidget {
  const ProductPic({
    Key key,
    @required this.size,
    this.image,
    this.itemid,
  }) : super(key: key);
  final String itemid;
  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: Constants.kdefaultpadding),
      height: size.width * 0.7,
      // color: Colors.black,
      child: Stack(
        children: <Widget>[
          Container(
            width: size.width * .7,
            height: size.width * .7,
            decoration: BoxDecoration(
              color: Colors.white,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Hero(
              tag: itemid,
              child: Image.network(
                image,
                height: size.width * .7,
                width: size.width * .7,
                // fit: BoxFit.values[5],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
