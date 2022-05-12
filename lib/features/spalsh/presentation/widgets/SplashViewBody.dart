import 'package:e_commerc_app/core/utils/size_config.dart';
import 'package:e_commerc_app/features/onboarding/presentation/on_boarding_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  AnimationController? _animationController;
  Animation<double>? _fadingAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this,duration:Duration(milliseconds: 600));
    _fadingAnimation = Tween<double>(begin:0.2,end: 1).animate(_animationController!);
    _animationController?.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FadeTransition(opacity:_fadingAnimation!,
              child: Text('Fruit Market',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 51))),
          Image.asset('Assets/images/SplashScreen.png',height: MediaQuery.of(context).size.height*0.5,)
        ],
      ),
    );
  }
  goToNextView(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>ObBoardingView(),transition: Transition.fade);
    });
  }
  
}

