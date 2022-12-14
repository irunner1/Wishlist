import 'package:flutter/material.dart';
import 'package:testwish/pages/settings.dart';
import '../helpers/colors.dart';
import '../helpers/person.dart';
import 'list_page.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                        icon: const Icon(
                          Icons.more_vert,
                          color: AppColors.textColor
                        ),
                        iconSize: 30,
                        splashRadius: 30,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MySettings()
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      user[0].image,
                      fit: BoxFit.cover,
                      width: 105,
                      height: 105,
                    ),
                  ),
                  Container(height: 10),
                  Text(user[0].name + ' ' + user[0].surname,
                      style: const TextStyle(
                        fontSize: 22,
                        color: AppColors.textColor)
                      ), //???????????????? $username
                  Container(height: 2),
                  Text('@' + user[0].nickname,
                      style: const TextStyle(
                          fontSize: 16, color: AppColors.subtextColor)),
                  Container(height: 40),
                  const Text('?????? ????????????????',
                      style: TextStyle(
                          fontSize: 22, color: AppColors.textColor)),
                ],
              )
            ),
          ],
        ),
        SizedBox(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
            ),
            padding: const EdgeInsets.only(top: 10, right: 10, bottom: 8),
            itemCount: user[0].wishes.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  width: 140,
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          //???????????????? ???? image asset
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
                          style: const TextStyle(
                              fontSize: 15, color: AppColors.textColor),
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          softWrap: false)
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListPage(
                              wishlistIndex: index,
                            )),
                  );
                },
              );
            }
          )
        ),
      ],
    );
  }
}
