import 'dart:developer';

import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';


class ListPage extends StatelessWidget {
  final int wishlistIndex;
  const ListPage({ Key? key, required this.wishlistIndex }) : super(key: key);

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
                          user[0].wishes[wishlistIndex].wishlistName,
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
                height: MediaQuery.of(context).size.height / 1.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15), 
                  ),
                  color: AppColors.foregroundColor,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 30),
                  itemCount: user[0].wishes[wishlistIndex].items.length,
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
                                user[0].wishes[wishlistIndex].items[index].itemImage,
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
                                Container(height: 5),
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                    user[0].wishes[wishlistIndex].items[index].itemName,
                                    style: const TextStyle(fontSize: 18, color: AppColors.textColor),
                                    overflow: TextOverflow.fade,
                                    maxLines: 1,
                                    softWrap: false,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  user[0].wishes[wishlistIndex].items[index].itemDescribtion, //user[0].wishes[0].items[index].itemDescribtion
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: AppColors.textColor
                                  ),
                                  maxLines: 5,
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        user[0].wishes[wishlistIndex].items[index].itemPrice, //можно сделать перенос текста на две строки
                                        style: const TextStyle(fontSize: 18, color: AppColors.textColor),
                                        overflow: TextOverflow.fade,
                                        maxLines: 1,
                                        softWrap: false,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.delete,
                                        color: AppColors.textColor,
                                      ),
                                      Container(width: 10),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColors.textColor,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.foregroundColor,
        child: const Icon(Icons.add),
        onPressed: () {
          log('add item to wishlist');
          showModalBottomSheet (
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
                      height: 150,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.selectImageColor
                      ),
                      child: const Center(
                        child: Text(
                          'Добавить изображение',
                          style: TextStyle(
                            color: AppColors.textColor,
                            fontSize: 18,
                          ),
                        )
                      ),
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
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                      ),
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
                          border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Цена",
                        filled: true,
                        fillColor: AppColors.cardColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                      ),
                    ),
                    const Spacer(),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Ссылка на товар",
                        filled: true,
                        fillColor: AppColors.cardColor,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(5)))
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: MediaQuery.of(context).size.width - 40,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.backgroundColor
                      ),
                      child: TextButton(
                        onPressed: (() {
                          
                        }),
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
            }
          );
        },
      ),
    );
  }
}