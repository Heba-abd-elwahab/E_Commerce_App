import 'package:e_commerc_app/features/onboarding/presentation/widgets/custom_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, this.PageIndex}) : super(key: key);
  final  PageController? PageIndex;
  @override
  Widget build(BuildContext context) {
    return PageView(
       controller:PageIndex!,
       children: [
         CustomViewItem(
           title: 'E Shopping',
           imagePath: 'Assets/images/shopping.png',
           subTitle: 'Explore top organic fruits & grab them',
         ),
         CustomViewItem(
           title: 'Delivery on the way',
           imagePath: 'Assets/images/delivery.png',
           subTitle: 'Get your order by speed delivery',
         ),
         CustomViewItem(
           title: 'Delivery arrived',
           imagePath: 'Assets/images/deliveryWay.png',
           subTitle: 'Order is arrived at your place',
         ),
       ],
    );
  }
}
