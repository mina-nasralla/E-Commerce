import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(height: 2,color: Color(0xffDDDFDF),),),
        SizedBox(width: 16,),
        Text('أو',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        SizedBox(width: 16,),
        Expanded(child: Divider(height: 2,color: Color(0xffDDDFDF),),),
      ],
    );
  }
}
