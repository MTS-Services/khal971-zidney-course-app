import 'package:flutter/material.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/custom_label.dart';
import 'package:zidney/view/widgets/custom_premium_container.dart';
import 'package:zidney/view/widgets/subject_container.dart';
import 'package:zidney/view/widgets/topic_overview_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<String> icons = const [
    'assets/images/math_icon.png',
    'assets/images/chemistry_icon.png',
    'assets/images/biology_icon.png',
    'assets/images/physics_icon.png',
  ];

  final List<String> subjects = const [
    'Math',
    'Chemistry',
    'Biology',
    'Physics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showTitle: true,
        title: 'Sophie',
        classTitle: 'Class 10',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: AppStyles.paddingSymmetricXL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomPremiumCotainer(),
                const SizedBox(height: 20),
                CustomLabel(text: 'Last Practiced Chapter', showImage: false),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      flex: 8,
                      child: TopicOverviewCard(
                        chapter: '1',
                        classNum: '10',
                        showButtonText: true,
                        subject: 'Advance Math',
                        totalQuestion: 10,
                        showImage: true,
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SubjectContainer(
                            subject: 'Life Science',
                            chapter: '1',
                            classNum: '10',
                          ),
                          SubjectContainer(
                            subject: 'Life Science',
                            chapter: '1',
                            classNum: '10',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),//added some comment
                SizedBox(
                  height: AppStyles.screenHeightPercentage(context, 0.015),
                ),
                Text(
                  'All Subjects',
                  style: TextStyle(
                    fontSize: AppStyles.fontL,
                    fontWeight: AppStyles.weightBold,
                  ),
                ),
                SizedBox(
                  height: AppStyles.screenHeightPercentage(context, 0.011),
                ),
                // AllSubjectScreen(icons: icons, subjects: subjects),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
