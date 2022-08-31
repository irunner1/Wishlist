import 'dart:developer';

import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';


class FriendListPage extends StatelessWidget {
  final int friendIndex, friendWishlistIndex;
  const FriendListPage({ Key? key, required this.friendIndex, required this.friendWishlistIndex }) : super(key: key);

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
                          icon: const Icon(Icons.arrow_back_ios, color: AppColors.textColor),
                          iconSize: 30,
                          splashRadius: 30,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          people[friendIndex].wishes[friendWishlistIndex].wishlistName,
                          style: const TextStyle(fontSize: 22, color: AppColors.textColor),
                              overflow: TextOverflow.fade,
                              maxLines: 1,
                              softWrap: false,
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_vert, color: AppColors.textColor),
                          iconSize: 35,
                          splashRadius: 30,
                          onPressed: (){
                            log('friend settings');
                          },
                        ),
                      ],
                    )
                  ],
                ) 
              ),
            ],
          ),
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
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15), 
                  ),
                  color: AppColors.foregroundColor,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
                  itemCount: people[friendIndex].wishes[friendWishlistIndex].items.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return  Container(
                      height: 140,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.itemColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                people[friendIndex].wishes[friendWishlistIndex].items[index].itemImage,
                                fit: BoxFit.cover,
                                width: 120,
                                height: 130,
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(height: 5),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    people[friendIndex].wishes[friendWishlistIndex].items[index].itemName,
                                    style: const TextStyle(fontSize: 18, color: AppColors.textColor),
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    people[friendIndex].wishes[friendWishlistIndex].items[index].itemDescribtion, //user[0].wishes[0].items[index].itemDescribtion
                                    style: const TextStyle(fontSize: 14, color: AppColors.textColor),
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        people[friendIndex].wishes[friendWishlistIndex].items[index].itemPrice, //можно сделать перенос текста на две строки
                                        style: const TextStyle(fontSize: 18, color: AppColors.textColor),
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        icon: const Icon(Icons.indeterminate_check_box_outlined),
                                        color: AppColors.textColor,
                                        onPressed: () {  },
                                      ),
                                      Container(width: 10),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textColor,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]
                      ),
                    );
                  }
                )
              ),
            ]),
          )
        ]
      )
    );
  }
}