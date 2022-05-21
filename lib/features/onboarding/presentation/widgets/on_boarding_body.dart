import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:e_commerc_app/core/widgets/custom_buttons.dart';
import 'package:e_commerc_app/features/Auth/presentation/pages/login/login_view.dart';
import 'package:e_commerc_app/features/onboarding/presentation/widgets/custom_Page_view.dart';
import 'package:e_commerc_app/features/onboarding/presentation/widgets/custom_indictor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);
  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}
class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
     pageController = PageController(
       initialPage: 0
     )..addListener(() {
       setState(() {});
     });
     super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
           CustomPageView(PageIndex: pageController,),
           Positioned(
               bottom:SizeCofig.defaultSize!*9,
               right: 0,
               left: 0,
               child:CustomIndictor(DotsIndex: pageController!.hasClients?pageController!.page:0,)
           ),
           Visibility(
             visible:pageController!.hasClients?(pageController!.page==2?false:true):true,
             child: Positioned(
                 top:SizeCofig.defaultSize!*5,
                 right: 32,
                 child:Text(
                   'Skip',
                   style: TextStyle(
                   fontSize: 14,
                   color: Colors.black54
               ),
             textAlign: TextAlign.left,)
             ),
           ),
        Positioned(
            bottom: SizeCofig.defaultSize!*5,
            right: SizeCofig.defaultSize!*5,
            left: SizeCofig.defaultSize!*5,
            child: CustomGeneralButton(
              onTap: (){
                if(pageController!.page!<2){
                    pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  Get.to(()=>LogInView(),transition:Transition.rightToLeft,duration: Duration(milliseconds: 500));
                }
              },
              text:pageController!.hasClients?(pageController!.page==2?'Get started':'next'):'next',
            )
        ),
      ],
    );
  }
}
