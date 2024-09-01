import 'package:e_commerce/Core/utilise/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onpress, required this.text});

  final VoidCallback onpress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ) ,

            backgroundColor: AppColors.primaryColor),
      ),
    );
  }
}
