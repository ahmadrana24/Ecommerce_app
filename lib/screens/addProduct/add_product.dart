import 'package:Ecommerce_app/res/app_colors.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  AddProduct({Key key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('ADD PRODUCT'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.7,
            decoration: BoxDecoration(
                color: AppColors().primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
          ),
        ],
      ),
    );
  }
}
