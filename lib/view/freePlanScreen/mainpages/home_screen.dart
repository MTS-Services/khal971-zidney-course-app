import 'package:flutter/material.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/custom_label.dart';
import 'package:zidney/utils/common/question_container.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/widgets/custom_premium_container.dart';
import 'package:zidney/view/widgets/subject_container.dart';
import 'package:zidney/view/widgets/topic_overview_card.dart';
import '../../widgets/all_subject_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    Expanded(
                      flex: 3,
                      child: TopicOverviewCard(
                        chapter: '1',
                        classNum: '10',
                        showButtonText: true,
                        subject: 'Advance Math',
                        totalQuestion: 10,
                        showImage: true,
                      ),
                    ),
                    Expanded(
                      flex: 2,
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
                ),
                SizedBox(height: 35),
                Text(
                  'Practicing Courses',
                  style: AppTextStyle.bold16.apply(fontSizeFactor: 1.2),
                ),
                SizedBox(height: 15),

                for (int i = 0; i < 4; i++)
                  QuestionContainer(
                    title: 'Life Science',
                    subTitle: 'Chapter : 10th',
                    showTrailIcon: false,
                    showIcon: true,
                    imageIcon: AssetPath.accessIcon,
                  ),
                SizedBox(height: 30),
                Text(
                  'All Subjects',
                  style: AppTextStyle.bold16.apply(fontSizeFactor: 1.2),
                ),
                SizedBox(height: 20),
                for (int i = 0; i < 4; i++)
                  AllSubjectScreen(subName: 'Math', image: AssetPath.labelIcon),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
