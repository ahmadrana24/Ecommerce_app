import 'package:Ecommerce_app/providers/product.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.onPress,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Constants.kdefaultpadding,
          vertical: Constants.kdefaultpadding / 2),
      height: 160,
      child: InkWell(
        onTap: onPress,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                  color: itemIndex.isEven
                      ? Colors.amberAccent
                      : Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [Constants().kBoxShadow]),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: Constants.kdefaultpadding),
                height: 160,
                width: 200,
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Constants.kdefaultpadding,
                  vertical: Constants.kdefaultpadding / 2,
                ),
                height: 136,
                width: size.width - 210,
                child: Text(
                  product.title,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
