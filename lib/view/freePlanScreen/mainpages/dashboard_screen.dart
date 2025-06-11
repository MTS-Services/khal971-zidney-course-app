import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/question_container.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/quiz_summary_card.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/streak_card.dart';
import 'package:zidney/view/widgets/custom_progress_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: CustomAppBar(
        showAction: true,
        title: "Sophie",
        classTitle: "Class",
        showTitle: true,
      ),

      extendBody: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Your streaks',
              style: TextStyle(
                fontWeight: AppStyles.weightBold,
                fontSize: AppStyles.fontL,
              ),
            ),
            const SizedBox(height: 10),
            StreakCard(
              title: 'You are on a'.removeAllWhitespace,
              subtitle: '20 day streak',

              backgroundImage: AssetImage(AssetPath.streksIcon),
              icon: Image.asset(AssetPath.fireIcon, scale: 4),
              showProgressBar: false,
              progressColor: Colors.purple,
            ),
            const SizedBox(height: 25),
            Text(
              'Your practice summary',
              style: TextStyle(
                fontWeight: AppStyles.weightBold,
                fontSize: AppStyles.fontL,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      QuizSummaryCard(
                        count: 20,
                        title: 'Questions',
                        subtitle: 'Success on first \n attempt',
                        emoji: '😍',
                        backgroundColor: AppColors.greenDark,
                        textColor: AppColors.chocolateShadow,
                      ),
                      const SizedBox(height: 16),
                      QuizSummaryCard(
                        count: 20,
                        title: 'Questions',
                        subtitle: 'Wrong answer on first \n attempt',
                        emoji: '😐',
                        backgroundColor: AppColors.red,
                        textColor: AppColors.whiteColor,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 1,
                  child: QuizSummaryCard(
                    height: 285,
                    topHeading: "Right Answer",
                    count: 80,
                    title: 'Quiz',
                    subtitle: 'You are doing great\n keep up the practice',
                    emoji: '😊',
                    backgroundColor: AppColors.greenDark,
                    textColor: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Your Plan',
              style: TextStyle(
                fontWeight: AppStyles.weightBold,
                fontSize: AppStyles.fontL,  
              ),
            ),
            const SizedBox(height: 10),

            StreakCard(
              title: 'You are on a',
              subtitle: '20 day Left',
              backgroundImage: AssetImage(AssetPath.premiumImage),
              icon: Image.asset(AssetPath.premiumIcon, scale: 4),
              showProgressBar: true,
              progressColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
