// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class customSuffixIcon extends StatelessWidget {
  final String svgIcon;
  customSuffixIcon(this.svgIcon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        SizeConfig().getProportionateScreenWidth(30),
        SizeConfig().getProportionateScreenWidth(30),
        SizeConfig().getProportionateScreenWidth(30),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: SizeConfig().getProportionateScreenHeight(18),
      ),
    );
  }
}
