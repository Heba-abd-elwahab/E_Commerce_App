import 'package:e_commerc_app/core/constants.dart';
import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.onTap}) : super(key: key);
  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeCofig.screenWidth,
        decoration: BoxDecoration(
          color: KmainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(text!,style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          )),
        ),
      ),
    );
  }
}