import 'package:e_commerce/features/Auth/presentation/views/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: 'تمتلك حساب بالفعل؟',
                style: TextStyle(color: Color(0xff2D9F5D), fontSize: 16),
              ),
              const TextSpan(text: ' '),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()));
                  },
                text: 'تسجيل دخول',
                style: const TextStyle(color: Color(0xff1B5E37), fontSize: 16),
              )
            ],
          ),
        ),
      ],
    );
  }
}
