// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(30.0)),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig().getProportionateScreenWidth(30.0),
          vertical: SizeConfig().getProportionateScreenWidth(30.0)),
      width: double.infinity,
      // height: 90.0,
      decoration: BoxDecoration(
        color: Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text.rich(
        TextSpan(
            text: "A Winter Surprise\n",
            style: TextStyle(color: Colors.white),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                text: "CashBack 20%",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ]),
      ),
    );
  }
}
