// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:e_commerce_application/Screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = '/login_success';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success'),
      ),
      body: Body(),
    );
  }
}
