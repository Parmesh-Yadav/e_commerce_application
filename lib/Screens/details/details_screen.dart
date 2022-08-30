// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce_application/Models/product.dart';
import 'package:e_commerce_application/Screens/details/components/body.dart';
import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments? arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments?;
    return Scaffold(
      backgroundColor: Color(0xFFF5F7F9),
      appBar: CustomAppBar(
        arguments!.product.rating,
        preferredSize: AppBar().preferredSize,
        child: AppBar(),
      ),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments(this.product);
}
