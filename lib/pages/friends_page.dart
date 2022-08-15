import 'package:flutter/material.dart';
import '../helpers/colors.dart';


class FriendsPage extends StatelessWidget {
  const FriendsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Friends', style: TextStyle( fontSize: 24, color: AppColors.textColor))
      ),
    );
  }
}