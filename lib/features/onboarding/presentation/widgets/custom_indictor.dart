import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerc_app/core/constants.dart';
import 'package:flutter/material.dart';

class CustomIndictor extends StatelessWidget {
  const CustomIndictor({Key? key, this.DotsIndex}) : super(key: key);
  final double? DotsIndex;
  @override
  Widget build(BuildContext context) {
    return  DotsIndicator(
      decorator:DotsDecorator(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(10),
              side: BorderSide(color:KmainColor)
          ),
          activeColor: KmainColor
      ),
      dotsCount:3,
      position: DotsIndex!,
    );
  }
}
