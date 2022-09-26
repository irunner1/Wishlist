import 'package:flutter/material.dart';
import 'package:testwish/main_page.dart';
import 'theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wishlist',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: const MyMain(),
    );
  }
}
