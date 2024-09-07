import 'package:e_commerce/features/Auth/presentation/views/Signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: 'لا تمتلك حساب؟',
                style: TextStyle(color: Color(0xff2D9F5D), fontSize: 16),
              ),
              const TextSpan(text: ' '),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Signupview()));
                  },
                text: 'قم بانشاء حساب',
                style:
                const TextStyle(color: Color(0xff1B5E37), fontSize: 16),
              )
            ],
          ),
        ),
      ],
    );
  }
}
