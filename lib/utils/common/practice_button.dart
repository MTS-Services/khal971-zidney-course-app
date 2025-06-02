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
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      decoration: BoxDecoration(
        // Apply circular shape when no text is shown, or rounded corners when text is present
        borderRadius:
            hasRadius
                ? BorderRadius.circular(
                  showText ? 40 : 50,
                ) // larger circle when no text
                : BorderRadius.zero,
        color: AppColors.whiteColor,
        boxShadow:
            showMoreShadow
                ? [BoxShadow(offset: Offset(0, 5), color: Color(0xffF0E4DE))]
                : [BoxShadow(offset: Offset(0, 3), color: Color(0xffF0E4DE))],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showText)
            Text(
              'Start Practice',
              style: AppTextStyle.bold14.apply(
                fontSizeFactor: 1.3,
                color: AppColors.chocolate,
              ),
            ),
          Icon(Icons.double_arrow_sharp),
        ],
      ),
    );
  }
}
