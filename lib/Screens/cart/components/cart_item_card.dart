// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../Models/Cart.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: SizeConfig().getProportionateScreenWidth(196),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F7),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: SizeConfig().getProportionateScreenWidth(40)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItem}",
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
