// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:e_commerce_application/Screens/forgot_password/components/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Body(),
    );
  }
}
