import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:projects/screens/home_page.dart';
import 'package:projects/screens/updateproductpage.dart';

void main() {
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id:(context)=>HomePage(),
        UpdateProductPage.id:(context)=>UpdateProductPage(),

      },
      initialRoute: HomePage.id,
    );
  }
}



