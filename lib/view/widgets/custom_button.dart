import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';

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
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    required this.buttonText,
    this.prefix,
    this.suffix,
    this.textColor = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.primaryColor, width: 2),
              boxShadow: [
                BoxShadow(color: AppColors.primaryShadow, offset: const Offset(0, 10)),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefix != null) ...[prefix!, const SizedBox(width: 6)],
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: textColor,
                    ),
                  ),
                ),
                if (suffix != null) ...[const SizedBox(width: 6), suffix!],
              ],
            )
        ),
      ),
    );
  } 
}
