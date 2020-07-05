import 'package:Ecommerce_app/providers/product.dart';
import 'package:provider/provider.dart';
import './res/app_colors.dart';
import './screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Product(),
      child: MaterialApp(
        title: 'Ecommerce App',
        theme: ThemeData(
          primaryColor: AppColors().primaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      ),
    );
  }
}
