import 'package:Ecommerce_app/res/constant.dart';

import './components/CategoryList.dart';

import './components/SearchBox.dart';

import '../res/app_colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text('Products'),
      ),
      body: Column(
        children: <Widget>[
          SearchBox(),
          CategoryList(),
          SizedBox(
            height: Constants().kdefaultpadding / 2,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard();
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Constants().kdefaultpadding,
          vertical: Constants().kdefaultpadding / 2),
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 135,
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [Constants().kBoxShadow]),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants().kdefaultpadding),
              height: 160,
              width: 200,
              child: Image.asset(
                'assets/images/food1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: Constants().kdefaultpadding,
                vertical: Constants().kdefaultpadding / 2,
              ),
              height: 136,
              width: size.width - 210,
              child: Text(
                'food for you for daily diet',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
