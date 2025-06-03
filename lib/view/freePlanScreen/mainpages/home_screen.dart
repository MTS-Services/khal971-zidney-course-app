import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            padding:
                AppStyles
                    .paddingSymmetricXL, // You can internally apply .w/.h in AppStyles too
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CustomPremiumCotainer(),
                SizedBox(height: 20.h),
                const CustomLabel(
                  text: 'Last Practiced Chapter',
                  showImage: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: TopicOverviewCard(
                        chapter: '1',
                        classNum: '10',
                        showButtonText: true,
                        subject: 'Advance Math',
                        totalQuestion: 10,
                        showImage: true,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          SubjectContainer(
                            subject: 'Life Science',
                            chapter: '1',
                            classNum: '10',
                          ),
                          SizedBox(height: 10),
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
                SizedBox(height: 35.h),
                Text(
                  'Practicing Courses',
                  style: AppTextStyle.bold16.apply(fontSizeFactor: 1.2),
                ),
                SizedBox(height: 15.h),

                for (int i = 0; i < 4; i++)
                  QuestionContainer(
                    title: 'Life Science',
                    subTitle: 'Chapter : 10th',
                    showTrailIcon: false,
                    showIcon: true,
                    imageIcon: AssetPath.accessIcon,
                  ),
                SizedBox(height: 30.h),
                Text(
                  'All Subjects',
                  style: AppTextStyle.bold16.apply(fontSizeFactor: 1.2),
                ),
                SizedBox(height: 20.h),
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
