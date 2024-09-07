import 'package:e_commerce/features/Auth/presentation/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../Core/widgets/custom_appbar.dart';

class Signupview extends StatelessWidget {
  const Signupview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(title: 'حساب جديد', function: () {  }),
      body: const SignupViewBody(),
    );
  }
}
