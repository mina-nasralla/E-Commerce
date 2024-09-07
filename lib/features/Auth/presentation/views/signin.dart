import 'package:e_commerce/features/Auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../Core/widgets/custom_appbar.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: 'تسجيل دخول',
          function: () {
            Navigator.pop(context);
          }),
      body: const LoginViewBody(),
    );
  }
}
