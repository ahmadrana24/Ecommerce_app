import 'package:Ecommerce_app/providers/product.dart';
import 'package:Ecommerce_app/res/app_colors.dart';
import 'package:Ecommerce_app/widgets/rounded_text_field.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  AddProduct({Key key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController _titleController;
  TextEditingController _imageController;
  TextEditingController _categoryController;

  @override
  void initState() {
    _titleController = TextEditingController();
    _imageController = TextEditingController();
    _categoryController = TextEditingController();
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('ADD PRODUCT'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.7,
              decoration: BoxDecoration(
                color: AppColors().primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.values[5],
                  children: <Widget>[
                    RoundedTextField(
                      label: 'Title',
                      controller: _titleController,
                    ),
                    RoundedTextField(
                      label: 'Image URL',
                      controller: _imageController,
                    ),
                    RoundedTextField(
                      label: 'Category',
                      controller: _categoryController,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
              child: FlatButton.icon(
                icon: Icon(Icons.add),
                onPressed: () {
                  Map<String, dynamic> productData = {
                    'category': _categoryController.text.toLowerCase(),
                    'image': _imageController.text.toLowerCase(),
                    'title': _titleController.text.toLowerCase(),
                  };
                  Product().addProduct(productData);
                },
                label: Text(
                  'Add',
                  textScaleFactor: 1.4,
                ),
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _categoryController.dispose();
    _imageController.dispose();
    _titleController.dispose();
    // _formKey.d
    super.dispose();
  }
}
