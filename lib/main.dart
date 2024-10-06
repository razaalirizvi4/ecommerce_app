import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/introPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intropage(),
        routes: {'homePage': (context) => HomePage()});
  }
}
