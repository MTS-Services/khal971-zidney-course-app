import 'package:flutter/material.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/widgets/custom_button.dart';
import 'package:zidney/view/widgets/custom_container.dart';

import '../../../../utils/common/custom_app_bar.dart';
import '../../../widgets/answer_bottom_sheet.dart';

class ManyPartQuestion extends StatelessWidget {
  const ManyPartQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showAction: true, showActionIcon: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
           CustomContainer(
             height: AppStyles.screenHeightPercentage(context, 0.22),
             width: AppStyles.screenWidthPercentage(context, 0.50),
             child: Padding(
               padding: const EdgeInsets.all(5.0),
               child: Image.asset(AssetPath.subjectImage ),
             ),
           ),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.050)),
            Text(
              """How do molecules influence human \nhealth?""",
              style: AppTextStyle.bold16,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.025)),
            Text(
              """Molecules are vital for health, influencing \nprocesses. They build cells, affect metabolism, and immune responses. Proteins repair tissues, lipids support membranes, and carbohydrates provide energy. Vitamins regulate functions, \nensuring smooth body operation. \nUnderstanding these interactions shows their impact on health.""",
              style: AppTextStyle.regular16,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.060)),
            optionRow(context, 'a)', 'How does social media impact our well-being?'),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.040)),
            optionRow(context, 'b)', 'How does social media impact our well-being?'),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.040)),
            optionRow(context, 'c)', 'How does social media impact our well-being?'),
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.098)),
            CustomButton(
              onTap: (){
                showAnswerBottomSheet(context);
                print("Hello world");
              },
              prefix: Image.asset(AssetPath.penPng , width: 24, height: 24,),
              buttonText: "answer(a)",
              width:AppStyles.screenWidthPercentage(context, 0.98),
            )
          ],
        ),
      ),
    );
  }
  Widget optionRow(
      BuildContext context,
      String optionLabel,
      String optionText,
      ) {
    return Row(
      children: [
        Text(
          optionLabel,
          style: AppTextStyle.bold16,
          textAlign: TextAlign.center,
        ),
        SizedBox(width: AppStyles.screenWidthPercentage(context, 0.015)),
        Expanded(
          child: Text(
            optionText,
            style: AppTextStyle.regular16,
            textAlign: TextAlign.center,
          ),
        ),
      ],
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
      builder: (context) => AnswerBottomSheet(
        answerController: answerController,
        onSubmit: (answer) {
          print('Answer Submitted: $answer');
          Navigator.pop(context);
        },
      ),
    );
  }


}
