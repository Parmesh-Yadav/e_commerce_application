// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';
import 'componenets/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
