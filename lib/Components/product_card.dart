// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Models/product.dart';
import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  // final String width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig().getProportionateScreenWidth(40),
      ),
      child: SizedBox(
        width: SizeConfig().getProportionateScreenWidth(280),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.02,
              child: Container(
                padding: EdgeInsets.all(
                    SizeConfig().getProportionateScreenWidth(40)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kSecondaryColor.withOpacity(0.1),
                ),
                child: Image.asset(product.images[0]),
              ),
            ),
            SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: SizeConfig().getProportionateScreenWidth(36),
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(
                      SizeConfig().getProportionateScreenWidth(16),
                    ),
                    width: SizeConfig().getProportionateScreenWidth(56),
                    height: SizeConfig().getProportionateScreenWidth(56),
                    decoration: BoxDecoration(
                      color: product.isFavourite
                          ? kSecondaryColor.withOpacity(0.15)
                          : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/Heart Icon_2.svg",
                      color: product.isFavourite
                          ? Color(0xFFFF4848)
                          : Color(0xFFDBDEE4),
                    ),
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
