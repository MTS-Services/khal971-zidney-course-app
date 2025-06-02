import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';

class AllSubjectScreen extends StatelessWidget {
  const AllSubjectScreen({
    super.key,
    required this.icons,
    required this.subjects,
  });

  final List<String> icons;
  final List<String> subjects;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              width: double.infinity,
              height: AppStyles.screenHeightPercentage(context, 0.055),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grey,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 16),
                  Image.asset(icons[index], height: 30, width: 30),
                  SizedBox(width: 16),
                  Text(
                    subjects[index],
                    style: TextStyle(
                      fontWeight: AppStyles.weightMedium,
                      fontSize: AppStyles.fontM,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
