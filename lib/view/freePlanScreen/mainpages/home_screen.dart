import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/custom_label.dart';
import 'package:zidney/view/freePlanScreen/Question & Quiz/topic_screen.dart';
import 'package:zidney/view/widgets/all_subject_screen.dart';
import 'package:zidney/view/widgets/custom_premium_container.dart';
import 'package:zidney/view/widgets/topic_overview_card.dart';
import 'package:zidney/viewmodels/controller/bottom_nav_controller.dart';

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
                    CustomPremiumContainer(),
                  ],
                ),
                const SizedBox(height: 20),
                CustomLabel(text: 'Last Practiced Chapter', showImage: false),
                SizedBox(height: 15),
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
                      onStartPressed: () {},
                    ),
                    const SizedBox(width: 3),
                  ],
                ),
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
                AllSubjectScreen(icons: icons, subjects: subjects),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
