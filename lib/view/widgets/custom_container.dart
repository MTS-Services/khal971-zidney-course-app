import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final Color? shadowColor;
  final Color? backgroundColor;

  const CustomContainer({
    super.key,
    this.height,
    this.borderRadius,
    this.width,
    this.shadowColor = AppColors.primaryColor, this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryColor, width: 2),
        boxShadow: [
          BoxShadow(color: AppColors.primaryColor, offset: const Offset(0, 10)),
        ],
      ),
    );
  }
}
