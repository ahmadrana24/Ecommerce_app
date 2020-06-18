import 'package:Ecommerce_app/models/product.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatefulWidget {
  CategoryList({Key key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['All', 'Shirt', 'furniture', 'food'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Constants().kdefaultpadding / 4),
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Consumer<Product>(
            builder: (context, value, _) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                  value.productsSelection(categories[index]);
                });
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                    horizontal: Constants().kdefaultpadding),
                margin: EdgeInsets.symmetric(
                    horizontal: Constants().kdefaultpadding),
                decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Colors.white.withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  categories[index],
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
