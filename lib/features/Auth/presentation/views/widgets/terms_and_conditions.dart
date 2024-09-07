import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Signup.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}
bool ischecked = false;

class _TermsAndConditionsState extends State<TermsAndConditions> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: ischecked,
          onChanged: (value) {
            setState(() {
              ischecked = !ischecked;
            });
          },
          checkColor: Colors.white,
          activeColor: Colors.green,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على',
                  style: TextStyle(color: Color(0xff2D9F5D), fontSize: 16),
                ),
                const TextSpan(text: ' '),
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => const Signupview()));
                    },
                  text: 'الشروط والأحكام الخاصة بنا',
                  style:
                      const TextStyle(color: Color(0xff1B5E37), fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
