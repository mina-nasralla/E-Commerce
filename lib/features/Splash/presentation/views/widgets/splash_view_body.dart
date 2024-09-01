import 'package:e_commerce/Core/services/shared_pref_singleton.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/features/Auth/presentation/views/signin.dart';
import 'package:e_commerce/features/onBoarding/presentation/views/onboarding_view.dart';
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
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
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
    Future.delayed(const Duration(seconds: 8), ()  {
      bool isOnBoardingSeen = SharedPrefs.getBool(KisOnBoardingSeen);
      if( isOnBoardingSeen) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const Signin()));
      }else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnboardingView()));
      }
    });
  }
}
