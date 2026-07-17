import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyMemberOrCreateAccount extends StatelessWidget {
  const AlreadyMemberOrCreateAccount({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
            text: title,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                  text: subTitle,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xffC67C4E),
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()..onTap = onTap),
            ]),
      ),
    );
  }
}
