import 'package:flutter/material.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({ Key? key }) : super(key: key);

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
                      const Spacer(),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.more_vert, color: AppColors.textColor),
                        iconSize: 30,
                        splashRadius: 30,
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'lib/assets/me.jpg',
                      fit: BoxFit.cover,
                      width: 105,
                      height: 105,
                    ),
                  ),
                  Container(height: 10),
                  Text(user[0].name, style: const TextStyle(fontSize: 22, color: AppColors.textColor)), //добавить $username 
                  Container(height: 40),
                  const Text('Мои вишлисты', style: TextStyle(fontSize: 22, color: AppColors.textColor)),
                ],
              ) 
            ),
          ],
        ),
        SizedBox(
          // height: 900, 
          child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
            
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            padding: const EdgeInsets.only(top: 10, left: 0, right: 8, bottom: 8),
            itemCount: user[0].wishes.length,
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
                    Text(user[0].wishes[index].wishlistName,
                      style: const TextStyle(fontSize: 15, color: AppColors.textColor),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false
                      )
                  ],
                ),
              );
            })
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
        onPressed: () {
          // Add your onPressed code here!
        },
      ),
    );
    
    
    
    // ListView(
    //   children: [
    //     ListView(
    //       shrinkWrap: true,
    //       physics: const NeverScrollableScrollPhysics(),
    //       children: <Widget>[
    //         Container( //шапка
    //           margin: const EdgeInsets.only(top: 20, bottom: 0),
    //           padding: const EdgeInsets.only(left: 20, right: 15),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: <Widget>[
    //               Row(
    //                 children: [
    //                   const Spacer(),
    //                   IconButton(
    //                     onPressed: (){},
    //                     icon: const Icon(Icons.more_vert, color: AppColors.textColor),
    //                     iconSize: 30,
    //                     splashRadius: 30,
    //                   ),
    //                 ],
    //               ),
    //               ClipRRect(
    //                 borderRadius: BorderRadius.circular(15),
    //                 child: Image.asset(
    //                   'lib/assets/me.jpg',
    //                   fit: BoxFit.cover,
    //                   width: 105,
    //                   height: 105,
    //                 ),
    //               ),
    //               Container(height: 10),
    //               const Text('Артём Пучков', style: TextStyle(fontSize: 22, color: AppColors.textColor)), //добавить $username 
    //               Container(height: 40),
    //               const Text('Мои вишлисты', style: TextStyle(fontSize: 22, color: AppColors.textColor)),
    //             ],
    //           ) 
    //         ),
    //       ],
    //     ),
    //     SizedBox(
    //       // height: 900, 
    //       child: GridView.builder(
    //         shrinkWrap: true,
    //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //           crossAxisSpacing: 5.0,
    //           mainAxisSpacing: 5.0,
    //         ),
    //         padding: const EdgeInsets.only(top: 10, left: 0, right: 8, bottom: 8),
    //         itemCount: people.length,
    //         itemBuilder: (BuildContext context, int index) {
    //           return Container(
    //             width: 140,
    //             margin: const EdgeInsets.only(left: 20),
    //             child: Column(
    //               children: <Widget>[
    //                 ClipRRect(
    //                   borderRadius: BorderRadius.circular(15),
    //                   child: Image.asset(
    //                     people[index].image,
    //                     fit: BoxFit.cover,
    //                     width: 140,
    //                     height: 140,
    //                   ),
    //                 ),
    //                 const Padding(padding: EdgeInsets.only(top: 10)),
    //                 Text(people[index].name,
    //                   style: const TextStyle(fontSize: 15, color: AppColors.textColor),
    //                     overflow: TextOverflow.fade,
    //                     maxLines: 1,
    //                     softWrap: false
    //                   )
    //               ],
    //             ),
    //           );
    //         })
    //     ),
    //   ],
    // );
  }
}