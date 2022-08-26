import 'package:flutter/material.dart';

import '../../../Components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2focusNode;
  late FocusNode pin3focusNode;
  late FocusNode pin4focusNode;

  @override
  void initState() {
    super.initState();
    pin2focusNode = FocusNode();
    pin3focusNode = FocusNode();
    pin4focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2focusNode.dispose();
    pin3focusNode.dispose();
    pin4focusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: SizeConfig().getProportionateScreenWidth(120.0),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin2focusNode);
                  },
                ),
              ),
              SizedBox(
                width: SizeConfig().getProportionateScreenWidth(120.0),
                child: TextFormField(
                  focusNode: pin2focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin3focusNode);
                  },
                ),
              ),
              SizedBox(
                width: SizeConfig().getProportionateScreenWidth(120.0),
                child: TextFormField(
                  focusNode: pin3focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value, pin4focusNode);
                  },
                ),
              ),
              SizedBox(
                width: SizeConfig().getProportionateScreenWidth(120.0),
                child: TextFormField(
                  focusNode: pin4focusNode,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    pin4focusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
            "Continue",
            () {},
          ),
        ],
      ),
    );
  }
}
