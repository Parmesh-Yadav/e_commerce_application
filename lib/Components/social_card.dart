// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class SocailCard extends StatelessWidget {
  final String icon;
  final Function() press;

  SocailCard(this.icon, this.press);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig().getProportionateScreenWidth(10.0)),
        padding: EdgeInsets.all(SizeConfig().getProportionateScreenWidth(22.5)),
        height: SizeConfig().getProportionateScreenHeight(70.0),
        width: SizeConfig().getProportionateScreenWidth(70.0),
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
