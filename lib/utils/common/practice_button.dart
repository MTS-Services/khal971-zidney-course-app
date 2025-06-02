import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';

class PracticeButton extends StatelessWidget {
  const PracticeButton({
    super.key,
    this.showText = false,
    this.hasRadius = true,
    this.showMoreShadow = false,
  });

  final bool showText;
  final bool hasRadius;
  final bool showMoreShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius:
            hasRadius
                ? BorderRadius.circular(showText ? 40 : 50)
                : BorderRadius.zero,
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, showMoreShadow ? 5 : 3),
            color: const Color(0xffF0E4DE),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Prevent overflow
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showText)
            Flexible(
              child: Text(
                'Start Practice',
                style: AppTextStyle.bold14.apply(
                  fontSizeFactor: 1.3,
                  color: AppColors.chocolate,
                ),
                overflow: TextOverflow.ellipsis, // Avoid overflow
              ),
            ),
          const SizedBox(width: 6), // Spacing between text and icon
          const Icon(Icons.double_arrow_sharp),
        ],
      ),
    );
  }
}
