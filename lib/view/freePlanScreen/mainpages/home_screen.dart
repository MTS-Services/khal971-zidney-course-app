import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/view/freePlanScreen/Question & Quiz/topic_screen.dart';
import 'package:zidney/view/widgets/custom_button.dart';
import 'package:zidney/view/widgets/custom_progress_bar.dart';
import 'package:zidney/view/widgets/topic_overview_card.dart';
import 'package:zidney/viewmodels/controller/bottom_nav_controller.dart';
import 'package:zidney/viewmodels/controller/progress_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final myController = Get.put(ProgressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: AppStyles.paddingSymmetricXL,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: AppStyles.screenHeightPercentage(context, 0.12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: const Color(0xFFF1EBF4),
                      ),
                      child: SvgPicture.asset(
                        AssetPath.vectorSmallBackground,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 27),
                      child: Row(
                        children: [
                          SvgPicture.asset(AssetPath.vector),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Zidney Premium',
                                style: TextStyle(
                                  fontSize: AppStyles.fontXL,
                                  fontWeight: AppStyles.weightMedium,
                                  color: AppColors.secondaryColor,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Unlimited Attempts",
                                    style: TextStyle(
                                      fontSize: AppStyles.fontM,
                                      fontWeight: AppStyles.weightMedium,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  SvgPicture.asset(AssetPath.vectorInfinity),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Last practiced chapter',
                  style: TextStyle(
                    fontSize: AppStyles.fontL,
                    fontWeight: AppStyles.weightBold,
                  ),
                ),
                SizedBox(height: AppStyles.screenHeightPercentage(context, 0.015),),
                Row(
                  children: [
                    TopicOverviewCard(
                      logoPath: AssetPath.arithMaticLogo,
                      backgroundPath: AssetPath.vectorBackground,
                      title: 'Advanced Math',
                      chapter: 'Chapter 1',
                      totalQuestions: 30,
                      currentQuestion: 7,
                      onTap: () {
                        final navController = Get.find<BottomNavController>();
                        navController.openWithChild(TopicScreen());
                      },
                      onStartPressed: () {
                      },
                    ),
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
