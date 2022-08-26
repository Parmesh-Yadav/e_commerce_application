// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'icn_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IcnBtnWithCounter(
            numOfItems: 0,
            press: () {},
            svgSrc: "assets/icons/Cart Icon.svg",
          ),
          IcnBtnWithCounter(
            numOfItems: 3,
            press: () {},
            svgSrc: "assets/icons/Bell.svg",
          ),
        ],
      ),
    );
  }
}
