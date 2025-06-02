import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({
    super.key,
    required this.backgroundColor,
    required this.progressColor,
  });
  final Color backgroundColor;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.7,
      child: LinearPercentIndicator(
        lineHeight: 6,
        backgroundColor: backgroundColor,
        progressColor: progressColor,
        percent: 0.5,
        barRadius: Radius.circular(5),
      ),
    );
  }
}
