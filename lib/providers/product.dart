import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;

  final String title, image, category;
  Product({this.category, this.id, this.title, this.image});

  Future<void> addProduct(productData) async {
    await Firestore.instance.collection('products').add(productData);
    print('done');
  }

  setproducts() {
    notifyListeners();
  }

  void productsSelection(String val) {
    setproducts();
    // if (val == 'Shirt') {
    //   products =
    //       products.where((element) => element.category == 'Shirt').toList();
    // }
    // if (val == 'furniture') {
    //   products =
    //       products.where((element) => element.category == 'furniture').toList();
    // }
    // if (val == 'food') {
    //   products =
    //       products.where((element) => element.category == 'food').toList();
    // }

    notifyListeners();
  }
}
