// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, use_key_in_widget_constructors

import 'package:e_commerce_application/Components/default_button.dart';
import 'package:e_commerce_application/constants.dart';
import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().getProportionateScreenWidth(50)),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              Text(
                "OTP Verification",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig().getProportionateScreenWidth(50),
                ),
              ),
              Text("We sent your code to +91 96540*****"),
              // ignore: prefer_const_literals_to_create_immutables
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              OTPForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  //resend OTP.
                },
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
