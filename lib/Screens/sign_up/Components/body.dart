// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:e_commerce_application/Screens/sign_up/Components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../Components/social_card.dart';
import '../../../size_config.dart';

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
                  'Register Account',
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
                // SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocailCard('assets/icons/google-icon.svg', () {}),
                    SocailCard('assets/icons/facebook-2.svg', () {}),
                    SocailCard('assets/icons/twitter.svg', () {}),
                  ],
                ),
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
