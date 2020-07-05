import 'package:Ecommerce_app/providers/product.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:Ecommerce_app/res/screen_size_utils.dart';
import 'package:Ecommerce_app/screens/addProduct/add_product.dart';
import 'package:Ecommerce_app/screens/details/details_scren.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import './components/CategoryList.dart';
import './components/SearchBox.dart';
import '../res/app_colors.dart';
import 'package:flutter/material.dart';
import 'components/product_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    ScreenUtil.instance = ScreenUtil(width: 414, height: 896)..init(context);
    DS.width = size.width;
    DS.height = size.height;
    return Scaffold(
      backgroundColor: AppColors().primaryColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (ctx) => AddProduct()));
        },
        child: Icon(Icons.add),
      ),
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
            height: Constants.kdefaultpadding / 2,
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
                StreamBuilder(
                  stream: Firestore.instance.collection('products').snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData)
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    return ListView.builder(
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProductCard(
                          itemIndex: index,
                          product: Product(
                            category: snapshot.data.documents[index]
                                ['category'],
                            image: snapshot.data.documents[index]['image'],
                            title: snapshot.data.documents[index]['title'],
                            id: snapshot.data.documents[index].documentID,
                          ),
                          onPress: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: Product(
                                    category: snapshot.data.documents[index]
                                        ['category'],
                                    image: snapshot.data.documents[index]
                                        ['image'],
                                    title: snapshot.data.documents[index]
                                        ['title'],
                                    id: snapshot
                                        .data.documents[index].documentID,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
                // Consumer<Product>(
                //   builder: (context, value, _) => ListView.builder(
                //     itemCount: products.length,
                //     itemBuilder: (BuildContext context, int index) {
                //       return ProductCard(
                //         itemIndex: index,
                //         product: products[index],
                //         onPress: () {
                //           Navigator.of(context).push(
                //             MaterialPageRoute(
                //               builder: (context) => DetailsScreen(
                //                 product: products[index],
                //               ),
                //             ),
                //           );
                //         },
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
