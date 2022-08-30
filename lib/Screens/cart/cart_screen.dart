// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_application/Components/default_button.dart';
import 'package:e_commerce_application/Models/Cart.dart';
import 'package:e_commerce_application/Screens/cart/components/body.dart';
import 'package:e_commerce_application/constants.dart';
import 'package:e_commerce_application/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "${demoCarts.length} Items",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CheckOutCard(),
    );
  }
}

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig().getProportionateScreenWidth(30),
        horizontal: SizeConfig().getProportionateScreenWidth(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.50),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: SizeConfig().getProportionateScreenWidth(80),
                  width: SizeConfig().getProportionateScreenWidth(80),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add Voucher Code"),
                const SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig().getProportionateScreenWidth(40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Totol:\n",
                    children: [
                      TextSpan(
                        text: "\$337.15",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: SizeConfig().getProportionateScreenWidth(380),
                  child: DefaultButton(
                    "Check Out",
                    () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
