import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;

  final String title, image, category;
  Product({this.category, this.id, this.title, this.image});

  setproducts() {
    // products = [
    //   Product(
    //     category: 'food',
    //     id: 1,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2016/12/26/17/28/food-1932466_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'food',
    //     id: 2,
    //     title: "Poppy Plastic Tub Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2010/12/13/10/05/background-2277_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'food',
    //     id: 3,
    //     title: "Bar Stool Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'food',
    //     id: 4,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2016/03/10/18/44/top-view-1248955_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'food',
    //     id: 5,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2017/02/15/10/39/salad-2068220_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'furniture',
    //     id: 6,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'furniture',
    //     id: 7,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'furniture',
    //     id: 8,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2015/06/24/16/36/office-820390_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'furniture',
    //     id: 9,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'furniture',
    //     id: 10,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2014/08/11/21/39/wall-416060_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'Shirt',
    //     id: 11,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2016/01/19/14/45/person-1148941_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'Shirt',
    //     id: 12,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2020/03/31/16/18/rabbit-4988412_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'Shirt',
    //     id: 13,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2015/10/12/15/00/accessory-984072_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'Shirt',
    //     id: 14,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2019/09/10/14/41/lake-4466290_960_720.jpg",
    //   ),
    //   Product(
    //     category: 'Shirt',
    //     id: 15,
    //     title: "Classic Leather Arm Chair",
    //     image:
    //         "https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083375_960_720.jpg",
    //   ),
    // ];
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

  void snapshotsData() {
    //   Stream<QuerySnapshot> snap =
    //       Firestore.instance.collection('products').snapshots();
    //   snap.listen((event) {
    //     prString(event.documents.length);
    //   });
    // }
  }

// List<Product> products = [
//   Product(
//     category: 'food',
//     id: 1,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2016/12/26/17/28/food-1932466_960_720.jpg",
//   ),
//   Product(
//     category: 'food',
//     id: 2,
//     title: "Poppy Plastic Tub Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2010/12/13/10/05/background-2277_960_720.jpg",
//   ),
//   Product(
//     category: 'food',
//     id: 3,
//     title: "Bar Stool Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362_960_720.jpg",
//   ),
//   Product(
//     category: 'food',
//     id: 4,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2016/03/10/18/44/top-view-1248955_960_720.jpg",
//   ),
//   Product(
//     category: 'food',
//     id: 5,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2017/02/15/10/39/salad-2068220_960_720.jpg",
//   ),
//   Product(
//     category: 'furniture',
//     id: 6,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2017/03/19/01/43/living-room-2155376_960_720.jpg",
//   ),
//   Product(
//     category: 'furniture',
//     id: 7,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2017/09/09/18/25/living-room-2732939_960_720.jpg",
//   ),
//   Product(
//     category: 'furniture',
//     id: 8,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2015/06/24/16/36/office-820390_960_720.jpg",
//   ),
//   Product(
//     category: 'furniture',
//     id: 9,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2017/08/02/01/01/living-room-2569325_960_720.jpg",
//   ),
//   Product(
//     category: 'furniture',
//     id: 10,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2014/08/11/21/39/wall-416060_960_720.jpg",
//   ),
//   Product(
//     category: 'Shirt',
//     id: 11,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2016/01/19/14/45/person-1148941_960_720.jpg",
//   ),
//   Product(
//     category: 'Shirt',
//     id: 12,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2020/03/31/16/18/rabbit-4988412_960_720.jpg",
//   ),
//   Product(
//     category: 'Shirt',
//     id: 13,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2015/10/12/15/00/accessory-984072_960_720.jpg",
//   ),
//   Product(
//     category: 'Shirt',
//     id: 14,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2019/09/10/14/41/lake-4466290_960_720.jpg",
//   ),
//   Product(
//     category: 'Shirt',
//     id: 15,
//     title: "Classic Leather Arm Chair",
//     image:
//         "https://cdn.pixabay.com/photo/2018/01/15/07/51/woman-3083375_960_720.jpg",
//   ),
// ];

}
