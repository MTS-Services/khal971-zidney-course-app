import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/widgets/custom_button.dart';
import 'package:zidney/view/widgets/quiz_wrong_ans_limit.dart';
import '../../../../utils/common/custom_app_bar.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showAction: true, showActionIcon: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Center(child: Image.asset(AssetPath.question, height: 100)),
              SizedBox(
                height: AppStyles.screenHeightPercentage(context, 0.025),
              ),
              Text(
                """How do molecules influence human \nhealth?""",
                style: AppTextStyle.bold16,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: AppStyles.screenHeightPercentage(context, 0.025),
              ),
              Text(
                """Molecules are vital for health, influencing \nprocesses. They build cells, affect metabolism, and immune responses. Proteins repair tissues, lipids support membranes, and carbohydrates provide energy. Vitamins regulate functions, \nensuring smooth body operation. \nUnderstanding these interactions shows their impact on health.""",
                style: AppTextStyle.regular16,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.20)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomButton(onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                      buttonText: 'Essential molecules.',
                      border: Border.all(
                          color: selectedIndex == 0 ? AppColors.primaryColor : AppColors
                              .primaryColor),
                      backgroundColor: selectedIndex == 0
                          ? AppColors.primaryColor
                          : Colors.white,
                      textColor: selectedIndex == 0 ? Colors.white : AppColors
                          .blackColor,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: CustomButton(onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                      buttonText: 'Health impact.',
                      border: Border.all(
                          color: selectedIndex == 1 ? AppColors.primaryColor : AppColors
                              .primaryColor),
                      backgroundColor: selectedIndex == 1
                          ? AppColors.primaryColor
                          : Colors.white,
                      textColor: selectedIndex == 1 ? Colors.white : AppColors
                          .blackColor,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomButton(onTap: () {
                      selectedIndex == 2;
                    },
                      buttonText: 'Misleading claim.',
                      border: Border.all(
                          color: selectedIndex == 2 ? AppColors.primaryColor : AppColors
                              .primaryColor),
                      backgroundColor: selectedIndex == 2
                          ? AppColors.primaryColor
                          : Colors.white,
                      textColor: selectedIndex == 2 ? Colors.white : AppColors
                          .blackColor,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: CustomButton(onTap: () {
                      selectedIndex == 3;
                    },
                      buttonText: 'False statement.',
                      border: Border.all(
                          color: selectedIndex == 3 ? AppColors.primaryColor : AppColors
                              .primaryColor),
                      backgroundColor: selectedIndex == 3
                          ? AppColors.primaryColor
                          : Colors.white,
                      textColor: selectedIndex == 3 ? Colors.white : AppColors
                          .blackColor,
                    ),
                  ),
                ],
              ),

              CustomButton(
                onTap: () {
                    showAnswerBottomSheet(context);
                },
                backgroundColor: selectedIndex != null ? AppColors.buttonGreen : AppColors
                    .grey,
                shadowColor: selectedIndex != null
                    ? AppColors.buttonGreenShadow
                    : AppColors.greyShadow,
                textColor: AppColors.blackColor,
                suffix: Icon(Icons.double_arrow_outlined),
                buttonText: "Submit",
                width: AppStyles.screenWidthPercentage(context, 0.98),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showAnswerBottomSheet(BuildContext context) {
    final answerController = TextEditingController();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) =>
          QuizWrongAnsLimit(
            answerController: answerController,
            onSubmit: (answer) {
              print('Answer Submitted: $answer');
              Navigator.pop(context);
            },
          ),
    );
  }
}
