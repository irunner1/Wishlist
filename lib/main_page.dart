import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:testwish/pages/account_page.dart';
import 'package:testwish/pages/friends_page.dart';
import 'package:testwish/pages/search_page.dart';
import 'pages/home_page.dart';
import '../helpers/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../helpers/data.dart';



class MyMain extends StatefulWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  State<MyMain> createState() => _MyMainState();
}

class _MyMainState extends State<MyMain> {
  List pages = [
    const MyHomePage(),
    const SearchPage(),
    const FriendsPage(),
    const AccountPage()
  ];
  int navIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[navIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15), 
          ),
          color: AppColors.backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            backgroundColor: AppColors.backgroundColor,
            color: AppColors.textColor,
            activeColor: AppColors.textColor,
            tabBackgroundColor: AppColors.navButtonColor,
            gap: 8,
            iconSize: 24,
            duration: const Duration(milliseconds: 900),
            padding: const EdgeInsets.all(15),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Главная',
              ),
              GButton(
                icon: Icons.search,
                text: 'Поиск',
              ),
              GButton(
                icon: Icons.people,
                text: 'Друзья',
              ),
              GButton(
                icon: Icons.person,
                text: 'Аккаунт',
              ),
            ],
            selectedIndex: navIndex,
            onTabChange: (index) {
              setState(() {
                Data.isEnabled = false;
                navIndex = index;
                if (navIndex == 3) {
                  Data.isEnabled = true;
                }
              });
            },
          ),
        ),
      ),
      floatingActionButton: Visibility(
        visible: Data.isEnabled,
        child: FloatingActionButton(
          backgroundColor: AppColors.foregroundColor,
          child: const Icon(Icons.add),
          onPressed: () {
            log('add wishlist');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}