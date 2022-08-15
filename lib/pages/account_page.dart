import 'package:flutter/material.dart';
import '../helpers/colors.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('Account', style: TextStyle( fontSize: 24, color: AppColors.textColor))
      ),
    );
  }
}