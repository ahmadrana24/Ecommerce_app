import 'package:Ecommerce_app/providers/product.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:flutter/material.dart';

import 'components/product_picture.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key, this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        title: Text(
          'back',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding:
                EdgeInsets.symmetric(horizontal: Constants().kdefaultpadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
              color: Colors.grey[100],
            ),
            child: Column(
              children: <Widget>[
                ProductPic(
                  itemid: product.id,
                  size: size,
                  image: product.image,
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                    product.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: size.width * .1,
              width: size.width * .6,
              margin: EdgeInsets.only(bottom: Constants().kdefaultpadding),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'BACK',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
