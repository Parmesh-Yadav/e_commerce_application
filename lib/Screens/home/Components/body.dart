// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig().getProportionateScreenWidth(40)),
            HomeHeader(),
            SizedBox(height: SizeConfig().getProportionateScreenWidth(40)),
            DiscountBanner(),
            SizedBox(height: SizeConfig().getProportionateScreenWidth(40)),
            Categories(),
            SizedBox(height: SizeConfig().getProportionateScreenWidth(40)),
            SpecialOffers(),
            SizedBox(height: SizeConfig().getProportionateScreenWidth(40)),
            PopularProducts(),
            SizedBox(height: SizeConfig().getProportionateScreenWidth(40)),
          ],
        ),
      ),
    );
  }
}
