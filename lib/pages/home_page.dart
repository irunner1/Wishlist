import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../theme/custom_theme.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  get primaryColor => CustomTheme.lightTheme.primaryColor;

@override
  Widget build(BuildContext context) {
    final List<String> names = <String>['Дарья Малишевская', 'Елизавета Зарбаилова', 'Егор Корягин', 'Антон Матизен'];
    final List<String> imgNames = <String>['dasha', 'lisa', 'egr', 'anto'];
    final List<String> recNames = <String>['dasha'];
    final List<String> imgRecomendations = <String>['dasha'];

    return Scaffold(
      body: ListView(
        children: [
             ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container( //шапка
                  margin: const EdgeInsets.only(top: 40, bottom: 0),
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(children: const [
                        Text('Добрый день, Артём!', style: TextStyle(fontSize: 20, color: AppColors.textColor),), //добавить $username 
                        Text('Самое время обновить вишлист',
                          style: TextStyle( fontSize: 13, color: AppColors.subtextColor), ),
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
                borderRadius: BorderRadius.circular(15),
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
                Container(
                  height: 170,
                  margin: const EdgeInsets.only(top: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.only(right: 20)),
                      SizedBox(
                        height: 170,
                        width: 140,
                        child: Column(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'lib/assets/dasha.jpg',
                                fit: BoxFit.cover,
                                width: 140,
                                height: 140,
                              ),
                            ),
                          const Padding(padding: EdgeInsets.only(top: 10)),
                          const Text('День рождения', style: TextStyle(fontSize: 16, color: AppColors.textColor),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false
                          ),
                        ],)
                      ),
                      const Padding(padding: EdgeInsets.only(right: 20)),
                    ],
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
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8, left: 0, right: 8, bottom: 8),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: recNames.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'lib/assets/' + imgNames[index] + '.jpg',
                            fit: BoxFit.cover,
                            width: 140,
                            height: 140,
                          ),
                        ),
                        Text(names[index],
                          style: const TextStyle(fontSize: 16, color: AppColors.textColor),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false
                          ),
                        ],
                        // margin: const EdgeInsets.only(left: 20),
                      
                        // child: ClipRRect(
                        //   borderRadius: BorderRadius.circular(15),
                        //   child: Image.asset(
                        //     'lib/assets/' + imgNames[index] + '.jpg',
                        //     fit: BoxFit.cover,
                        //     width: 140,
                        //     height: 140,
                        //   ),
                        // ),
                        
                            // Center(child: Text(names[index],
                            //   style: const TextStyle(fontSize: 16, color: AppColors.textColor),
                            //     overflow: TextOverflow.fade,
                            //     maxLines: 1,
                            //     softWrap: false
                            //   ),
                            // ),

                      );
                    }
                  ),
                ),           
              ]),
            )

          
         

            
          ],
        ),
    );
  }
}