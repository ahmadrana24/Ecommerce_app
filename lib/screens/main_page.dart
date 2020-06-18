import 'package:Ecommerce_app/models/product.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:Ecommerce_app/screens/details/details_scren.dart';
import './components/CategoryList.dart';
import './components/SearchBox.dart';
import '../res/app_colors.dart';
import 'package:flutter/material.dart';
import 'components/product_card.dart';

class MainPage extends StatelessWidget {
  List<Product> product = products;
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
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(
                      itemIndex: index,
                      product: product[index],
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          ),
                        );
                      },
                    );
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
