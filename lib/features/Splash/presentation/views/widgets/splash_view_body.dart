import 'package:e_commerce/features/onBoarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/utilise/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return   Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.Plant),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.logomid),
          ],
        ),
        SvgPicture.asset(Assets.splashbottom),
      ]);


  }

  void excuteNavigation() {
    Future.delayed(const Duration(seconds: 8),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnboardingViewBody()));
    });
  }
}
