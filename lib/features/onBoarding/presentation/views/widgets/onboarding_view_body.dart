import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/Core/services/shared_pref_singleton.dart';
import 'package:e_commerce/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/utilise/app_colors.dart';
import '../../../../../constants.dart';
import '../../../../Auth/presentation/views/signin.dart';
import 'onboarding_pageview.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentpage = 0;
  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController();
    pageController.addListener((){
      currentpage = pageController.page!.round();
      setState(() {

      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageview(pageController: pageController,)),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentpage == 1 ? AppColors.primaryColor : AppColors.primaryColor.withOpacity(0.5),
             )
        ),
        const SizedBox(height: 29),
        Visibility(
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          visible: currentpage == 1 ? true :false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(onpress: () {
              SharedPrefs.setBool(KisOnBoardingSeen, true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signin()));
            }, text: 'ابدأ الان'),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
