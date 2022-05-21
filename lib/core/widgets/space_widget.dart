import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:SizeCofig.defaultSize!*value!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:SizeCofig.defaultSize!*value!,
    );
  }
}
