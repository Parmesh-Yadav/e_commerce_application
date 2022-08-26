import 'package:e_commerce_application/Screens/home/Components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../Components/product_card.dart';
import '../../../Models/product.dart';
import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        SizedBox(
          height: SizeConfig().getProportionateScreenWidth(30),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
              SizedBox(
                width: SizeConfig().getProportionateScreenWidth(40),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
