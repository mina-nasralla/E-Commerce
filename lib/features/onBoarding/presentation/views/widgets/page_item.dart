import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../Core/services/shared_pref_singleton.dart';
import '../../../../../constants.dart';
import '../../../../Auth/presentation/views/signin.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, required this.img, required this.bgimg, required this.subtitle, required this.title, required this.isvisible});

  final String img, bgimg,subtitle;
  final Widget title;
  final bool isvisible ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*.5,
          child: Stack(
            children: [
              Positioned.fill(child: SvgPicture.asset(bgimg,fit: BoxFit.fill,)),
              Positioned(
                bottom: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(img)),
              Visibility(
                visible: isvisible,
                child: InkWell(
                  onTap: (){
                    SharedPrefs.setBool(KisOnBoardingSeen, true);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginView()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text('تخط'),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(subtitle,textAlign: TextAlign.center,),
        )
      ],
    );
  }
}
