import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final String? titleText;
  final String? subTitleText;
  const CustomLogo({
    super.key, this.titleText, this.subTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: Image.asset('assets/images/logo.png'),
        ),
        SizedBox(height: 10),
        Text(
          titleText!,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          subTitleText!,
          style: TextStyle(fontSize: 14,),
        ),
      ],
    );
  }
}