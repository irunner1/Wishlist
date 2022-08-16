import 'package:flutter/material.dart';
import '../helpers/colors.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: <Widget>[
            Container( //шапка
              margin: const EdgeInsets.only(top: 60),
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Поиск', style: TextStyle(fontSize: 26, color: AppColors.textColor))
                  ),
                  Container(height: 20),
                  TextField(
                    // controller: сontroller,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search, color: AppColors.subtextColor,),
                      filled: true,
                      fillColor: AppColors.textColor,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
        Container(
          height: 100,
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
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Text('Категории',
                style: TextStyle(
                  fontSize: 26,
                  color: AppColors.textColor,
                ),
              ),
            ),
            Expanded(child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return ListTile();
              },
            ))
          ]),
        ),
      ],
    );
  }
}