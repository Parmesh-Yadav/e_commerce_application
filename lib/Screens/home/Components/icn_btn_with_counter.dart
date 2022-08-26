import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IcnBtnWithCounter extends StatelessWidget {
  const IcnBtnWithCounter({
    Key? key,
    required this.numOfItems,
    required this.press,
    required this.svgSrc,
  }) : super(key: key);

  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.all(SizeConfig().getProportionateScreenWidth(30)),
            width: SizeConfig().getProportionateScreenWidth(100),
            height: 50,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: SizeConfig().getProportionateScreenWidth(50),
                width: SizeConfig().getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfItems",
                    style: TextStyle(
                      fontSize: SizeConfig().getProportionateScreenWidth(20),
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
