import 'package:e_commerc_app/features/onboarding/presentation/widgets/on_boarding_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ObBoardingView extends StatelessWidget {
  const ObBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingBody(),
    );
  }
}
