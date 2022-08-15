import 'package:flutter/material.dart';
import 'theme/custom_theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wishlist',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}