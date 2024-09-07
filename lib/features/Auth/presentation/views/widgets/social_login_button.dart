import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.img,
      required this.title,
      required this.onpress});

  final String img, title;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Color(0xffDDDFDF), width: 1))),
        onPressed: onpress,
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(img),
          title: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
