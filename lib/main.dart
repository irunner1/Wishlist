import 'package:flutter/material.dart';
import 'package:testwish/main_page.dart';
import 'theme/custom_theme.dart';
import 'package:flutter/services.dart';
import '/helpers/colors.dart';

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
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.textColor,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Wishlist',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      home: const MyMain(),
    );
  }
}
