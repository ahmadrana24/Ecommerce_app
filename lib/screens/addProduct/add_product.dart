import 'package:Ecommerce_app/res/app_colors.dart';
import 'package:Ecommerce_app/res/constant.dart';
import 'package:Ecommerce_app/res/screen_size_utils.dart';
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
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('ADD PRODUCT'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            // height: DS.setHeight(.90),
            decoration: BoxDecoration(
              color: AppColors().primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
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
                  label: 'Title',
                  controller: _categoryController,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
