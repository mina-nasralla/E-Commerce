import 'package:e_commerce/Core/utilise/app_images.dart';
import 'package:e_commerce/features/onBoarding/presentation/views/widgets/page_item.dart';
import 'package:flutter/material.dart';

class OnboardingPageview extends StatelessWidget {
  const OnboardingPageview({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:  const [
        PageItem(
            img: Assets.pageitemImg1,
            bgimg: Assets.pageItemBG1,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('مرحبا بك فى Fruite Hub')
              ],
            ), isvisible: true,),
        PageItem(
            img: Assets.pageitemImg2,
            bgimg: Assets.pageItemBG2,
            subtitle: 'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ابحث وتسوق')
              ],
            ), isvisible: false,)
      ],
    );
  }
}
