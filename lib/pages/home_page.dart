import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../theme/custom_theme.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int navIndex = 0;
  get primaryColor => CustomTheme.lightTheme.primaryColor;

@override
  Widget build(BuildContext context) {
    final List<String> names = <String>['Дарья Малишевская', 'Елизавета Зарбаилова', 'Егор Корягин', 'Антон Матизен'];
    final List<String> imgNames = <String>['dasha', 'lisa', 'egr', 'anto'];
    final List<String> wishlistNames = <String>['День рождения'];
    final List<String> wishlistImg = <String>['listOne'];
    final List<String> recNames = <String>['Идеи подарков'];
    final List<String> imgRecomendations = <String>['recs'];

    return ListView(
      children: [
        ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container( //шапка
              margin: const EdgeInsets.only(top: 20, bottom: 0),
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(children: [
                    const Text('Добрый день, Артём!', style: TextStyle(fontSize: 22, color: AppColors.textColor),), //добавить $username 
                    Container(height: 2),
                    const Text('Самое время обновить вишлист',
                      style: TextStyle( fontSize: 14, color: AppColors.subtextColor), ),
                  ],),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'lib/assets/me.jpg',
                      fit: BoxFit.cover,
                      width: 105,
                      height: 105,
                    ),
                  )
                ],
              ) 
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 15, bottom: 0),
          margin: const EdgeInsets.only(top: 15, bottom: 0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15), 
            ),
            color: primaryColor,
          ),
          child: Column(children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Text('Друзья',
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.textColor,
                ),
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 8, left: 0, right: 8, bottom: 8),
                itemCount: names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/' + imgNames[index] + '.jpg',
                            fit: BoxFit.cover,
                            width: 140,
                            height: 140,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Text(names[index],
                          style: const TextStyle(fontSize: 16, color: AppColors.textColor),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false
                          )
                      ],
                    ),
                  );
                }
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: const Text('Мои вишлисты',
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.textColor,
                ),
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 8, left: 0, right: 8, bottom: 8),
                itemCount: wishlistNames.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container( //заменить на image asset
                            width: 140,
                            height: 140,
                            color: AppColors.itemColor,
                          ),
                          // child: Image.asset(
                          //   'lib/assets/dasha.jpg',
                          //   // 'lib/assets/' + wishlistImg[index] + '.jpg', позже заменить на второй массив с картинками
                          //   fit: BoxFit.cover,
                          //   width: 140,
                          //   height: 140,
                          // ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Text(wishlistNames[index],
                          style: const TextStyle(fontSize: 16, color: AppColors.textColor),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false
                          )
                      ],
                    ),
                  );
                }
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: const Text('Рекомендации',
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.textColor,
                ),
              ),
            ),
            ListView.builder(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recNames.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('lib/assets/' + imgRecomendations[index] + '.jpg'),
                        ),
                      ),
                    ),
                    Text(recNames[index],
                      style: const TextStyle(fontSize: 24, color: AppColors.textColor),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false
                    ),
                  ],
                );
              }
            ),
          ]),
        )
      ],
    );
  }
}