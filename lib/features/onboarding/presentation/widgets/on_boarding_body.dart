import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
           Positioned(
               top:SizeCofig.defaultSize!,
               child:Text('Skip',style: TextStyle(
                 fontSize: 14,
                 color: Colors.black12
           ),) ),
      ],
    );
  }
}
