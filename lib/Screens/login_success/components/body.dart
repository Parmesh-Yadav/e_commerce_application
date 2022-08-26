// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_application/Components/default_button.dart';
import 'package:e_commerce_application/Screens/home/home_screen.dart';
import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset('assets/images/success.png'),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: SizeConfig().getProportionateScreenWidth(50.0),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenHeight * 0.6,
          child: DefaultButton('Back to home', () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          }),
        ),
        Spacer(),
      ],
    );
  }
}
