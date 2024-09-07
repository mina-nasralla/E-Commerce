import 'package:flutter/material.dart';

AppBar buildAppBar({
  required String title,
  required VoidCallback function
}) {
  return AppBar(
    centerTitle: true,
    title: Text(title,style: const TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
    leading: IconButton(onPressed: function, icon: const Icon(Icons.arrow_back_ios)),
  );
}