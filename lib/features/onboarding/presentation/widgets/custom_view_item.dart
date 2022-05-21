import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:e_commerc_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CustomViewItem extends StatelessWidget {
  const CustomViewItem({Key? key, this.imagePath, this.title, this.subTitle}) : super(key: key);
  final String? imagePath;
  final String? title;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(8),
        SizedBox(
            height: SizeCofig.defaultSize!*17,child: Image.asset(imagePath!)),
        Text(title!,style: TextStyle(
          fontSize: 20,
          color: const Color(0xff2f2e41),
          fontWeight: FontWeight.w500
         ),
        textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(subTitle!,style: TextStyle(
            fontSize: 20,
            color: Colors.black12,
            fontWeight: FontWeight.w400
        ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
