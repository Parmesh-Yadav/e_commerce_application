// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:e_commerce_application/Screens/otp/Components/body.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/OTPScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
