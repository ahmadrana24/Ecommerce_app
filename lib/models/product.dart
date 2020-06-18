import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final int id;

  final String title, image, category;

  Product({this.category, this.id, this.title, this.image});

  List<Product> allProducts() {
    return products;
  }

  List<Product> productsSelection(String val) {
    List<Product> sh = products.where((element) => element.category == 'shirt');
    notifyListeners();
    return sh;
  }
}

// list of products
// for our demo
List<Product> products = [
  Product(
    category: 'food',
    id: 1,
    title: "Classic Leather Arm Chair",
    image: "assets/images/food1.jpg",
  ),
  Product(
    category: 'food',
    id: 2,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/food2.jpg",
  ),
  Product(
    category: 'food',
    id: 3,
    title: "Bar Stool Chair",
    image: "assets/images/food3.jpeg",
  ),
  Product(
    category: 'food',
    id: 4,
    title: "Classic Leather Arm Chair",
    image: "assets/images/food4.jpeg",
  ),
  Product(
    category: 'food',
    id: 5,
    title: "Classic Leather Arm Chair",
    image: "assets/images/food5.jpeg",
  ),
  Product(
    category: 'furniture',
    id: 6,
    title: "Classic Leather Arm Chair",
    image: "assets/images/fur1.jpg",
  ),
  Product(
    category: 'furniture',
    id: 7,
    title: "Classic Leather Arm Chair",
    image: "assets/images/fur2.jpg",
  ),
  Product(
    category: 'furniture',
    id: 8,
    title: "Classic Leather Arm Chair",
    image: "assets/images/fur3.jpeg",
  ),
  Product(
    category: 'furniture',
    id: 9,
    title: "Classic Leather Arm Chair",
    image: "assets/images/fur4.jpeg",
  ),
  Product(
    category: 'furniture',
    id: 10,
    title: "Classic Leather Arm Chair",
    image: "assets/images/fur5.jpeg",
  ),
  Product(
    category: 'shirt',
    id: 11,
    title: "Classic Leather Arm Chair",
    image: "assets/images/shr1.jpg",
  ),
  Product(
    category: 'shirt',
    id: 12,
    title: "Classic Leather Arm Chair",
    image: "assets/images/shr2.jpeg",
  ),
  Product(
    category: 'shirt',
    id: 13,
    title: "Classic Leather Arm Chair",
    image: "assets/images/shr3.jpeg",
  ),
  Product(
    category: 'shirt',
    id: 14,
    title: "Classic Leather Arm Chair",
    image: "assets/images/shr4.jpeg",
  ),
  Product(
    category: 'shirt',
    id: 15,
    title: "Classic Leather Arm Chair",
    image: "assets/images/shr5.jpeg",
  ),
];
