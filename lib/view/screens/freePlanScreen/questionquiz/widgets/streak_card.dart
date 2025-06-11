import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/custom_progress_bar.dart';
import 'package:zidney/view/widgets/custom_progress_bar.dart'; // make sure this is your progress bar

class StreakCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final ImageProvider backgroundImage;
  final Image icon;
  final bool showProgressBar;
  final Color progressColor;
  final Color progressBackground;

  const StreakCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.icon,
    this.showProgressBar = false,
    this.progressColor = Colors.purple,
    this.progressBackground = const Color(0xFFE0E0E0),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 91,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: backgroundImage, fit: BoxFit.cover),
            boxShadow:
                showProgressBar
                    ? [] // No shadow if progress bar is shown
                    : [
                      BoxShadow(
                        offset: const Offset(0, 8),
                        color: AppColors.primaryShadow,
                      ),
                    ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: AppStyles.fontM,
                    fontWeight: AppStyles.weightRegular,
                    color: AppColors.blackColor,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: AppStyles.weightBold,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const Spacer(),
                    icon,
                  ],
                ),
              ],
            ),
          ),
        ),

        // Conditional progress bar
        if (showProgressBar)
          Positioned(
            left: -7,
            bottom: -1,
            right: -8,
            child: CustomProgressBar(
              backgroundColor: progressBackground,
              progressColor: progressColor,
            ),
          ),
      ],
    );
  }
}
