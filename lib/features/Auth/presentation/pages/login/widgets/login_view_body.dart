import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:e_commerc_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(10),
        SizedBox(
          height: SizeCofig.defaultSize!*17,
          child: Image.asset('Assets/images/'),
        )
      ],
    );
  }
}
