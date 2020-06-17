import 'package:flutter/material.dart';

class Constants {
  final kdefaultpadding = 20.0;
  BoxShadow kBoxShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 3,
    blurRadius: 9,
    offset: Offset(0, 2), // changes position of shadow
  );
}
