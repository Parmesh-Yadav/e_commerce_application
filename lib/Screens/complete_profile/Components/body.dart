// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'complete_profile_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().getProportionateScreenWidth(40)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Complete Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig().getProportionateScreenWidth(50),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Complete your details \nor continue with social media.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text(
                  'By Continuing you confirm that you agree \nwith our Terms and Condition',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
