import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/practice_button.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/widgets/custom_progress_bar.dart';

class TopicOverviewCard extends StatelessWidget {
  const TopicOverviewCard({
    super.key,
    required this.subject,
    required this.chapter,
    required this.classNum,
    this.showButtonText = false,
    required this.totalQuestion,
    this.showImage = false,
  });
  final String subject;
  final String chapter;
  final String classNum;
  final bool showButtonText;
  final int totalQuestion;
  final bool showImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(17),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffFCC962),
        boxShadow: [BoxShadow(offset: Offset(0, 10), color: Color(0xffE49F13))],
      ),
      child: Stack(
        children: [
          if (showImage)
            Positioned.fill(
              child: Image.asset(AssetPath.containerBack, fit: BoxFit.cover),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    AssetPath.arithMaticLogo,
                    height: 48,
                    width: 48,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                subject,
                style: AppTextStyle.regular20.apply(
                  color: AppColors.chocolate,
                  fontSizeFactor: 1.3,
                ),
              ),
              Text(
                'chapter $chapter',
                style: AppTextStyle.regular20.apply(
                  color: AppColors.chocolate,
                  fontSizeFactor: 1.3,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Total question:$totalQuestion',
                style: AppTextStyle.regular14.apply(
                  color: AppColors.chocolate,
                  fontSizeFactor: 1.2,
                ),
              ),
              Text(
                'You are on:${classNum}th',
                style: AppTextStyle.regular14.apply(
                  color: AppColors.chocolate,
                  fontSizeFactor: 1.2,
                ),
              ),
              SizedBox(height: 15),
              CustomProgressBar(
                backgroundColor: AppColors.whiteColor,
                progressColor: AppColors.blackColor,
              ),
              SizedBox(height: 35),
              PracticeButton(showText: showButtonText),
            ],
          ),
        ],
      ),
    );
  }
}
