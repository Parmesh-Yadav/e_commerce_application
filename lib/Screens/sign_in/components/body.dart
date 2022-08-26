// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:e_commerce_application/Screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';
import '../../../Components/no_account_text.dart';
import '../../../Components/social_card.dart';

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
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig().getProportionateScreenWidth(50),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sing in with your email and password \nor continue with a social media.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocailCard('assets/icons/google-icon.svg', () {}),
                    SocailCard('assets/icons/facebook-2.svg', () {}),
                    SocailCard('assets/icons/twitter.svg', () {}),
                  ],
                ),
                SizedBox(height: 15.0),
                NoAccountText(),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
