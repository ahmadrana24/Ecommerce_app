import '../widgets/SearchBox.dart';

import '../res/app_colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          
        ],
      ),
    );
  }
}
