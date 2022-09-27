import 'dart:developer';

import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';

class MySettings extends StatelessWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(left: 40, right: 15, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.textColor
                        ),
                        iconSize: 30,
                        splashRadius: 30,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        'Настройки',
                        style: TextStyle(
                            fontSize: 22, color: AppColors.textColor),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      const Spacer(
                        flex: 3,
                      )
                    ],
                  )
                ],
              )),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              color: AppColors.foregroundColor,
            ),
            child: Column(children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: AppColors.foregroundColor,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 10),
                      child: Row(
                        children: [
                          const Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              user[0].image,
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    user[0].name + ' ' + user[0].surname,
                                    style: const TextStyle(
                                      color: AppColors.settingTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                
                                GestureDetector(
                                  child: const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Изменить профиль',
                                      style: TextStyle(
                                        color: AppColors.textColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    log('edit');
                                  },
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const Divider(
                      color: AppColors.textColor,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 40, bottom: 10),
                        color: AppColors.foregroundColor,
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.notifications,
                              size: 30,
                              color: AppColors.textColor,
                            ),
                            Spacer(),
                            Text(
                              'Уведомления',
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 20),
                            ),
                            Spacer(
                              flex: 7,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        log('notifications');
                      },
                    ),
                    const Divider(
                      color: AppColors.textColor,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                    ),
                    GestureDetector(
                      child: Container(
                        color: AppColors.foregroundColor,
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 40, bottom: 10),
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.people,
                              size: 30,
                              color: AppColors.textColor,
                            ),
                            Spacer(),
                            Text(
                              'Друзья',
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 20),
                            ),
                            Spacer(
                              flex: 7,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        log('friend');
                      },
                    ),
                    const Divider(
                      color: AppColors.textColor,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 40, bottom: 10),
                        color: AppColors.foregroundColor,
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.info_outline,
                              size: 30,
                              color: AppColors.textColor,
                            ),
                            Spacer(),
                            Text(
                              'Справка',
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 20),
                            ),
                            Spacer(
                              flex: 7,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        log('info');
                      },
                    ),
                    const Divider(
                      color: AppColors.textColor,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 40, bottom: 10),
                        color: AppColors.foregroundColor,
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.settings,
                              size: 30,
                              color: AppColors.textColor,
                            ),
                            Spacer(),
                            Text(
                              'Настройки',
                              style: TextStyle(
                                  color: AppColors.textColor, fontSize: 20),
                            ),
                            Spacer(
                              flex: 7,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        log('settings');
                      },
                    ),
                    const Divider(
                      color: AppColors.textColor,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, left: 40, right: 40, bottom: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: const [
                          Text(
                            'Выход',
                            style: TextStyle(
                                color: AppColors.textColor, fontSize: 20),
                          ),
                          Spacer(
                            flex: 7,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]
      ),
    );
  }
}
