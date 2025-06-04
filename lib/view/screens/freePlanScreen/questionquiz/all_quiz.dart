import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/question_container.dart';
import 'package:zidney/view/widgets/custom_button.dart';
import '../../../../utils/app_style.dart';
import '../../../../utils/common/custom_label.dart';

class AllQuiz extends StatefulWidget {
  const AllQuiz({super.key});

  @override
  State<AllQuiz> createState() => _AllQuizState();
}

class _AllQuizState extends State<AllQuiz> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        showTitle: true,
        title: 'Jabed',
        classTitle: 'Class',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: AppStyles.heightXS),
            Row(
              children: [
                CustomLabel(
                  image: AssetPath.labelIcon,
                  text: 'The world of Molecules',
                ),
                SizedBox(height: 20),
              ],
            ),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.015)),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                      });
                    },
                    backgroundColor:
                        isSelected
                            ? AppColors.primaryColor
                            : AppColors.primaryLightColor,
                    shadowColor:
                        isSelected
                            ? AppColors.primaryShadow
                            : AppColors.primaryLightColor,
                    buttonText: 'Questions',
                    textColor:
                        isSelected
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                    prefix: Image.asset(AssetPath.question, scale: 9),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      setState(() {
                        isSelected = false;
                      });
                    },
                    buttonText: 'Quiz',
                    backgroundColor:
                        !isSelected
                            ? AppColors.primaryColor
                            : AppColors.primaryLightColor,
                    shadowColor:
                        !isSelected
                            ? AppColors.primaryShadow
                            : AppColors.primaryLightColor,
                    textColor:
                        !isSelected
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                    prefix: Image.asset(AssetPath.quizImage, scale: 3),
                  ),
                ),
              ],
            ),
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
                          
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
