import 'package:flutter/material.dart';

class CustomTextFormfield extends StatelessWidget {
  const CustomTextFormfield({super.key, required this.hint, required this.type,  this.suffixicon});

  final String hint;
  final TextInputType type;
  final Widget? suffixicon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 15,color: Colors.grey),
        filled: true,
        fillColor: const Color(0xffE6E9EA),
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.grey,width: 1)
      );
  }
}
