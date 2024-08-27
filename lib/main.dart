import 'package:flutter/material.dart';

import 'features/Splash/presentation/views/splashview.dart';


void main() {
  runApp(const FruiteHub());
}
class FruiteHub extends StatelessWidget {
  const FruiteHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
