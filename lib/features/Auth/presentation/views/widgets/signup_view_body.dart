import 'package:e_commerce/Core/widgets/custom_button.dart';
import 'package:e_commerce/Core/widgets/custom_textfield.dart';
import 'package:e_commerce/features/Auth/presentation/views/widgets/already_have_account.dart';
import 'package:e_commerce/features/Auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormfield(
              hint: 'الاسم كامل',
              type: TextInputType.text,
              suffixicon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const CustomTextFormfield(
              hint: 'البريد الالكترونى',
              type: TextInputType.emailAddress,
              suffixicon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
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
            const CustomTextFormfield(
              hint: 'العنوان',
              type: TextInputType.streetAddress,
              suffixicon: Icon(
                Icons.location_on,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(onpress: (){}, text: 'إنشاء حساب جديد'),
            const SizedBox(height: 16),
            const AlreadyHaveAccount(),

          ],
        ),
      ),
    );
  }
}
