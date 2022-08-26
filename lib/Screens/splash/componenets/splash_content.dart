// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_application/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_application/size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent(this.image, this.text);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'AMAZON',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: SizeConfig().getProportionateScreenHeight(265),
          width: SizeConfig().getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
