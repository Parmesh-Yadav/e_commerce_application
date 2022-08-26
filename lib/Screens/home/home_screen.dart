// ignore_for_file: use_key_in_widget_constructors

import 'package:e_commerce_application/Screens/home/Components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
