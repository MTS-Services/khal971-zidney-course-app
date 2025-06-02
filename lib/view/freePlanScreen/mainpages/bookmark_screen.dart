import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/question_container.dart';
import 'package:zidney/view/widgets/custom_button.dart';

import '../../../utils/app_style.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(showTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AssetPath.bookmarkAddIcon, scale: 4),
                SizedBox(
                  width: AppStyles.screenWidthPercentage(context, 0.078),
                ),
                Text(
                  'Bookmarks',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: AppStyles.weightBold,
                    fontSize: AppStyles.fontL,
                  ),
                ),
                Spacer(),
                Image.asset(AssetPath.filterImage, scale: 4),
              ],
            ),
            SizedBox(
              height: AppStyles.screenHeightPercentage(context, 0.015),
            ),
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
                    shadowColor:isSelected
                        ? AppColors.primaryColor
                        : AppColors.primaryLightColor ,
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
                        ? AppColors.primaryColor
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
            SizedBox(height: AppStyles.screenHeightPercentage(context, 0.015),),
            SizedBox(
              height: AppStyles.screenHeightPercentage(context, 0.65),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return QuestionContainer(title: 'What are the building block of life?',
                        subTitle: 'attempts taken 3', trailIcon:AssetPath.circleCorrectImage
                        );
                  }),
            )




          ],
        ),
      ),
    );
  }
}

