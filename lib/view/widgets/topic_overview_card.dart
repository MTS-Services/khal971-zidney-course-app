import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zidney/utils/asset_path.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_style.dart';
import '../../view/widgets/custom_button.dart';
import '../../view/widgets/custom_progress_bar.dart';

class TopicOverviewCard extends StatelessWidget {
  final String logoPath;
  final String backgroundPath;
  final String title;
  final String chapter;
  final int totalQuestions;
  final int currentQuestion;
  final VoidCallback onTap;
  final VoidCallback onStartPressed;

  // Customizable sizes and styles
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final double? titleFontSize;
  final double? chapterFontSize;
  final double? questionFontSize;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? buttonFontSize;
  final BorderRadiusGeometry? buttonBorderRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? chapterTextStyle;
  final TextStyle? questionTextStyle;

  // Optional button suffix widget (e.g., arrow icon)
  final Widget? buttonSuffix;

  const TopicOverviewCard({
    super.key,
    required this.logoPath,
    required this.backgroundPath,
    required this.title,
    required this.chapter,
    required this.totalQuestions,
    required this.currentQuestion,
    required this.onTap,
    required this.onStartPressed,
    this.height,
    this.width,
    this.padding,
    this.titleFontSize,
    this.chapterFontSize,
    this.questionFontSize,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonFontSize,
    this.buttonBorderRadius,
    this.titleTextStyle,
    this.chapterTextStyle,
    this.questionTextStyle,
    this.buttonSuffix,
  });

  String _ordinal(int number) {
    if (number >= 11 && number <= 13) return 'th';
    switch (number % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Provide default sizes if null
    final double defaultHeight =
        height ?? AppStyles.screenHeightPercentage(context, 0.355);
    final double defaultWidth =
        width ?? AppStyles.screenWidthPercentage(context, 0.5133);
    final EdgeInsetsGeometry defaultPadding =
        padding ?? AppStyles.paddingSymmetricXL;
    final double defaultTitleFontSize = titleFontSize ?? AppStyles.fontXL;
    final double defaultChapterFontSize = chapterFontSize ?? AppStyles.fontXL;
    final double defaultQuestionFontSize = questionFontSize ?? AppStyles.fontM;
    final double defaultButtonWidth =
        buttonWidth ?? AppStyles.screenWidthPercentage(context, 0.4);
    final double defaultButtonHeight = buttonHeight ?? 40;
    final double defaultButtonFontSize = buttonFontSize ?? AppStyles.fontM;
    final BorderRadiusGeometry defaultButtonBorderRadius =
        buttonBorderRadius ?? BorderRadius.circular(40);

    return SizedBox(
      height: defaultHeight,
      width: defaultWidth,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(7),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryShadow,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: SvgPicture.asset(
                backgroundPath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(logoPath),
                const SizedBox(height: 8),
                Text(
                  title,
                  style:
                      titleTextStyle ??
                      TextStyle(
                        fontSize: defaultTitleFontSize,
                        fontWeight: AppStyles.weightRegular,
                        color: AppColors.chocolate,
                      ),
                ),
                Text(
                  chapter,
                  style:
                      chapterTextStyle ??
                      TextStyle(
                        fontSize: defaultChapterFontSize,
                        fontWeight: AppStyles.weightRegular,
                        color: AppColors.chocolate,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Total question $totalQuestions',
                  style:
                      questionTextStyle ??
                      TextStyle(
                        color: AppColors.chocolate,
                        fontWeight: AppStyles.weightRegular,
                        fontSize: defaultQuestionFontSize,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  'You are on: $currentQuestion${_ordinal(currentQuestion)}',
                  style:
                      questionTextStyle ??
                      TextStyle(
                        color: AppColors.chocolate,
                        fontWeight: AppStyles.weightRegular,
                        fontSize: defaultQuestionFontSize,
                      ),
                ),
                const SizedBox(height: 20),
                CustomProgressBar(
                  backgroundColor: Colors.grey.shade300,
                  progressColor: Colors.amber,
                ),
                SizedBox(
                  height: AppStyles.screenHeightPercentage(context, 0.04),
                ),
                CustomButton(
                  buttonText: 'Start Practice',
                  backgroundColor: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                  width: buttonWidth ?? defaultButtonWidth,
                  height: buttonHeight ?? defaultButtonHeight,
                  textColor: AppColors.chocolate,
                  shadowColor: AppColors.whiteColor.withAlpha(130),
                  suffix: Image.asset(AssetPath.arrowIcon),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
