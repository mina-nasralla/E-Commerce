import 'package:e_commerce/Core/utilise/app_images.dart';
import 'package:e_commerce/Core/widgets/custom_button.dart';
import 'package:e_commerce/Core/widgets/custom_textfield.dart';
import 'package:e_commerce/features/Auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

import 'dont_have_account.dart';
import 'or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormfield(
                hint: 'البريد الإلكتروني',
                type: TextInputType.emailAddress,
                suffixicon: Icon(Icons.email, color: Colors.grey)),
            const SizedBox(height: 16),
            const CustomTextFormfield(
              hint: 'كلمة المرور',
              type: TextInputType.visiblePassword,
              suffixicon: Icon(
                Icons.visibility,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {},
                    child: const Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(color: Color(0xff2D9F5D), fontSize: 13),
                    )),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(onpress: () {}, text: 'تسجيل دخول'),
            const SizedBox(height: 33),
            const DontHaveAccount(),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            SocialLoginButton(
              img: Assets.googleicon,
              title: 'تسجيل بواسطة جوجل',
              onpress: () {},
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              img: Assets.facebookicon,
              title: 'تسجيل بواسطة فيسبوك',
              onpress: () {},
            )
          ],
        ),
      ),
    );
  }
}
