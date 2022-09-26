import 'account_page.dart';
import 'package:flutter/material.dart';
import '../helpers/colors.dart';

class MySettings extends StatelessWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const Spacer(),
                          const Text(
                            'Настройки',
                            style: TextStyle(
                                fontSize: 22, color: AppColors.textColor),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false,
                          ),
                          const Spacer(flex: 2,)
                        ],
                      )
                    ],
                  )),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            // margin: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              color: AppColors.foregroundColor,
            ),
            child: Column(children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: AppColors.foregroundColor,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/anto.jpg',
                            fit: BoxFit.cover,
                            width: 140,
                            height: 140,
                          ),
                        ),
                        Column(
                          children: const [
                            Text('Артём Пучков'),
                            Text('Редактировать профиль')
                          ],
                        )
                      ],
                    )
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
