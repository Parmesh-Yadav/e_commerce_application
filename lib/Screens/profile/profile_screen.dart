// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_application/Screens/profile/components/body.dart';
import 'package:e_commerce_application/enums.dart';
import 'package:flutter/material.dart';

import '../../Components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
