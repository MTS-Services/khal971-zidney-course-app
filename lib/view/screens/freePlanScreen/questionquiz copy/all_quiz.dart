import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/question_container.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/quiz.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/custom_button.dart';
import '../../../../utils/app_style.dart';
import '../../../../utils/common/custom_label.dart';

class AllQuiz extends StatefulWidget {
  const AllQuiz({super.key});

  @override
  State<AllQuiz> createState() => _AllQuizState();
}

class _AllQuizState extends State<AllQuiz> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppStyles.heightXS),

          SizedBox(height: AppStyles.screenHeightPercentage(context, 0.015)),
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              radius: Radius.circular(10),
              trackVisibility: true,
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return QuestionContainer(
                      title: 'Quiz ${index + 1}',
                      subTitle: 'attempts taken 3',
                      trailIcon: AssetPath.circleCorrectImage,
                      onTap: () {
                        Get.to(() => Quiz());
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
