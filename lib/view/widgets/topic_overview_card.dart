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
  final double? height;
  final double? width;

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
    return Row(
      children: [
        SizedBox(
          height: AppStyles.screenHeightPercentage(context, 0.355),
          width: AppStyles.screenWidthPercentage(context, 0.5133),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              InkWell(
                onTap: onTap,
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
                padding: AppStyles.paddingSymmetricXL,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(logoPath),
                    const SizedBox(height: 8),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: AppStyles.fontXL,
                        fontWeight: AppStyles.weightRegular,
                        color: AppColors.chocolate,
                      ),
                    ),
                    Text(
                      chapter,
                      style: TextStyle(
                        fontSize: AppStyles.fontXL,
                        fontWeight: AppStyles.weightRegular,
                        color: AppColors.chocolate,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Total question $totalQuestions',
                      style: TextStyle(
                        color: AppColors.chocolate,
                        fontWeight: AppStyles.weightRegular,
                        fontSize: AppStyles.fontM,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'You are on: $currentQuestion${_ordinal(currentQuestion)}',
                      style: TextStyle(
                        color: AppColors.chocolate,
                        fontWeight: AppStyles.weightRegular,
                        fontSize: AppStyles.fontM,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomProgressBar(
                      progressColor: AppColors.primaryColor,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    SizedBox(
                      height: AppStyles.screenHeightPercentage(context, 0.04),
                    ),
                    CustomButton(
                      buttonText: 'Start Practice',
                      backgroundColor: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(40),
                      width: AppStyles.screenWidthPercentage(context, 0.4),
                      height: 40,
                      textColor: AppColors.chocolate,
                      shadowColor: AppColors.whiteColor.withAlpha(130),
                      suffix: Image.asset(AssetPath.arrowIcon),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
