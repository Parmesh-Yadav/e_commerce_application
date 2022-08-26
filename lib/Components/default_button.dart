// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:e_commerce_application/constants.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() press;

  DefaultButton(this.text, this.press);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Container(
        width: double.infinity,
        height: SizeConfig().getProportionateScreenHeight(56),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: kPrimaryColor,
        ),
        child: Center(
          child: Text(
            text,
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
