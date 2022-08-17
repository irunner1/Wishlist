import 'package:flutter/material.dart';
import '../helpers/colors.dart';


class FriendPage extends StatelessWidget {
  const FriendPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Account', style: TextStyle( fontSize: 24, color: AppColors.textColor))
      ),
    );
  }
}