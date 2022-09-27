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
        height: 75,
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
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: AppColors.foregroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: 200,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                              child: Text(
                            'Добавить Вишлист',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 23,
                            ),
                          )),
                        ),
                        const Spacer(),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Название",
                              filled: true,
                              fillColor: AppColors.cardColor,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        const Spacer(),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Дата",
                              filled: true,
                              fillColor: AppColors.cardColor,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 100,
                          child: TextField(
                            maxLines: 6,
                            decoration: InputDecoration(
                                hintText: "Описание",
                                filled: true,
                                fillColor: AppColors.cardColor,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.backgroundColor),
                          child: TextButton(
                            onPressed: (() {}),
                            style: TextButton.styleFrom(
                              backgroundColor: AppColors.backgroundColor,
                              padding: const EdgeInsets.all(10),
                            ),
                            child: const Text(
                              'Добавить',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
