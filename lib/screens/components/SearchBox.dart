import 'package:Ecommerce_app/res/constant.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        Constants().kdefaultpadding,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Constants().kdefaultpadding,
        vertical: Constants().kdefaultpadding / 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white.withOpacity(.4),
      ),
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white, fontSize: 22),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
