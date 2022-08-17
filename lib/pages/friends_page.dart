import 'dart:developer';
import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: <Widget>[
            Container( //шапка
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                    Text('Друзья', style: TextStyle(fontSize: 36, color: AppColors.textColor)),
                    Icon(Icons.search, color: AppColors.textColor, size: 35), //добавить поиск по друзьям
                ],
              ) 
            ),
          ],
        ),
        Container(height: 30),
        Container(
          padding: const EdgeInsets.only(top: 15),
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15), 
            ),
            color: AppColors.foregroundColor,
          ),
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
            itemCount: people.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  height: 110,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.itemColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            people[index].image,
                            fit: BoxFit.cover,
                            width: 90,
                            height: 90,
                          ),
                        ),
                      ),
                      Text(
                        people[index].name + ' ' + people[index].surname, //можно сделать перенос текста на две строки
                        style: const TextStyle(fontSize: 18, color: AppColors.textColor),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.textColor,
                        ),
                      )
                    ]
                  ),
                ),
                onTap: (){
                  log(people[index].name);
                },
              );
            }
          )
        ),
      ]
    );
  }
}