import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:zidney/utils/app_colors.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({super.key, required this.backgroundColor, required this.progressColor});
  final Color backgroundColor;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      lineHeight: 6,
      backgroundColor: backgroundColor,
      progressColor: progressColor,
      percent: 0.5,
      barRadius: Radius.circular(5),
    );
  }
}
