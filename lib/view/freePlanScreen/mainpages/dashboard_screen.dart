import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/app_background.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/custom_container.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        appBar: CustomAppBar(
          showTitle: true,
          title: 'Sophie',
          classTitle: 'Class 10',
        ),
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: AppStyles.paddingM,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your streaks',style: AppTextStyle.bold16,),
            Padding(
              padding: AppStyles.paddingVerticalM,
              child: CustomContainer(
                 height: 100,
                width: double.infinity,
                shadowColor: AppColors.primaryColor,
                backgroundColor: AppColors.primaryContainerColor,
                child: Column(
                  children: [
                    Text('You are on a',style: AppTextStyle.regular14,)
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
