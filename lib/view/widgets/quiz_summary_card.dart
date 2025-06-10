import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';

class QuizSummaryCard extends StatelessWidget {
  final double count;
  final String title;
  final String subtitle;
  final String emoji;
  final Color? backgroundColor;
  final Image? backgroundImage;
  final Color textColor;
  final double width;
  final double height;
  final String? topHeading;

  const QuizSummaryCard({
    super.key,
    required this.count,
    required this.title,
    required this.subtitle,
    required this.emoji,
    required this.textColor,
    this.width = 177,
    this.height = 135,
    this.topHeading,
    this.backgroundImage,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        image: backgroundImage != null
            ? DecorationImage(
          image: backgroundImage!.image,
          fit: BoxFit.cover,
        )
            : null,
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (topHeading != null) ...[
            Text(
              topHeading!,
              style: TextStyle(
                fontSize: 14,
                fontWeight: AppStyles.weightMedium,
                color: AppColors.blackColor,
              ),
            ),
            const SizedBox(height: 6),
          ],
          Row(
            children: [
              Text(
                '$count',
                style: TextStyle(
                  fontWeight: AppStyles.weightRegular,
                  fontSize: 24,
                  color: textColor,
                ),
              ),
              const Spacer(),
              Container(
                height: 34,
                width: 32,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                alignment: Alignment.center,
                child: Text(emoji, style: const TextStyle(fontSize: 20)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
