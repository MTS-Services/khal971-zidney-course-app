import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/practice_button.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/widgets/custom_progress_bar.dart';

class SubjectContainer extends StatelessWidget {
  const SubjectContainer({
    super.key,
    required this.subject,
    required this.chapter,
    required this.classNum,
  });
  final String subject;
  final String chapter;
  final String classNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xffFCC962),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AssetPath.labelIcon, height: 32, width: 32),
                PracticeButton(showText: false),
              ],
            ),
            SizedBox(height: 10),
            Text(
              subject,
              style: AppTextStyle.regular14.apply(
                color: AppColors.chocolate,
                fontSizeFactor: 1.3,
              ),
            ),
            Text(
              'chapter $chapter',
              style: AppTextStyle.regular14.apply(
                color: AppColors.chocolate,
                fontSizeFactor: 1.3,
              ),
            ),
            SizedBox(height: 20),

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
          ],
        ),
      ),
    );
  }
}
