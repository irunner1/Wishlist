import 'dart:developer';

import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';
import 'friend_list_page.dart';



class FriendPage extends StatelessWidget {
  final int friendIndex;
  const FriendPage({ Key? key, required this.friendIndex }) : super(key: key);

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
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios, color: AppColors.textColor),
                          iconSize: 30,
                          splashRadius: 30,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.more_vert, color: AppColors.textColor),
                          iconSize: 35,
                          splashRadius: 30,
                          onPressed: (){
                            log('friend settings');
                          },
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        people[friendIndex].image,
                        fit: BoxFit.cover,
                        width: 105,
                        height: 105,
                      ),
                    ),
                    Container(height: 10),
                    Text(people[friendIndex].name + ' ' + people[friendIndex].surname, style: const TextStyle(fontSize: 22, color: AppColors.textColor)), //добавить $username 
                    Container(height: 2),
                    Text(
                      '@' + people[friendIndex].nickname,
                      style: const TextStyle( fontSize: 16, color: AppColors.subtextColor)
                    ),
                    Container(height: 40),
                    const Text('Мои вишлисты', style: TextStyle(fontSize: 22, color: AppColors.textColor)),
                  ],
                ) 
              ),
            ],
          ),
          GestureDetector(
            child: SizedBox(
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                padding: const EdgeInsets.only(top: 10, right: 10, bottom: 8),
                itemCount: people[friendIndex].wishes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 140,
                    margin: const EdgeInsets.only(left: 20, right: 10),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container( //заменить на image asset
                            width: 140,
                            height: 140,
                            color: AppColors.itemColor,
                          ),
                        ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(15),
                        //   child: Image.asset(
                        //     people[index].image,
                        //     fit: BoxFit.cover,
                        //     width: 140,
                        //     height: 140,
                        //   ),
                        // ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Text(people[friendIndex].wishes[index].wishlistName,
                          style: const TextStyle(fontSize: 15, color: AppColors.textColor),
                            overflow: TextOverflow.fade,
                            maxLines: 1,
                            softWrap: false
                          )
                      ],
                    ),
                  );
                }
              )
            ),
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FriendListPage()),
            );
            },
          ),
        ],
      ),
    );
  }
}