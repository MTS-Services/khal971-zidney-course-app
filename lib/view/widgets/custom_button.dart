import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';

import '../../utils/app_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String buttonText;
  final Widget? child;
  final Widget? prefix;
  final Widget? suffix;
  final Color backgroundColor;
  final Color shadowColor;
  final BorderRadius borderRadius;
  final Color textColor;

  const CustomButton({
    super.key,
    this.child,
    this.backgroundColor = AppColors.primaryColor,
    this.shadowColor = AppColors.primaryShadow,
    this.borderRadius = AppStyles.radiusS,
    required this.buttonText,
    this.prefix,
    this.suffix,
    this.textColor = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyles.paddingXL,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: AppStyles.heightS,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: AppStyles.radiusS,
            border: Border.all(color: AppColors.primaryColor, width: 2,),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryShadow,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefix != null) ...[prefix!,],
              Padding(
                padding: AppStyles.paddingM,
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontWeight: AppStyles.weightBold,
                    fontSize: AppStyles.fontM,
                    color: textColor,
                  ),
                ),
              ),
              if (suffix != null) ...[ suffix!],
            ],
          ),
        ),
      ),
    );
  }
}
