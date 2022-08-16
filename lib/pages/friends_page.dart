import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/data.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: <Widget>[
            Container( //шапка
              margin: const EdgeInsets.only(top: 60),
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                    Text('Друзья', style: TextStyle(fontSize: 36, color: AppColors.textColor)),
                    Icon(Icons.search, color: AppColors.textColor, size: 35),
                ],
              ) 
            ),
          ],
        ),
        Container(height: 30),
        Container(
          height: 700,
          padding: const EdgeInsets.only(top: 15),
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15), 
            ),
            color: AppColors.foregroundColor,
          ),
          child: Column(children: <Widget>[
            Expanded(child: ListView.builder(
              padding: const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: Data.names.length,
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
                          image: AssetImage('lib/assets/' + Data.imgNames[index] + '.jpg'),
                        ),
                      ),
                    ),
                    Text(Data.names[index],
                      style: const TextStyle(fontSize: 24, color: AppColors.textColor),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false
                    ),
                  ],
                );
              }
            ))
          ]),
        ),
      ]
    );
  }
}