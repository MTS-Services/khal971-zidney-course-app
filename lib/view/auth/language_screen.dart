import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/view/auth/login_screen1.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/app_background.dart';
import '../../utils/asset_path.dart';
import '../screens/freePlanScreen/questionquiz/widgets/custom_Conditional_buton.dart';
import '../screens/freePlanScreen/questionquiz/widgets/custom_button.dart';
import '../screens/freePlanScreen/questionquiz/widgets/custom_logo.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});
  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final List<String> languages = [
    'English',
    'Spanish',
    'French',
    'Arabic',
    'Chinese (Mandarin)',
    'Bengali',
  ];
  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        showBgImage: 1,
        isScrollable: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50.h),
              SizedBox(height: AppStyles.heightS),
              CustomLogo(
                subTitleText: 'The one you are comfortable with ',
                titleText: 'Select Your language first',
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: AppStyles.screenHeightPercentage(context, 0.52),
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CustomConditionalButton(
                        isSelected: selectedIndex == index,
                        buttonText: languages[index],
                        prefix: Container(
                          width: 34,
                          child: Stack(
                            children: [
                              SvgPicture.asset(AssetPath.english2),
                              Positioned(
                                  left: 10,
                                  child: SvgPicture.asset(AssetPath.english1)),
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              CustomButton(
                width: AppStyles.screenHeightPercentage(context, 0.15),
                onTap: () {
                  if (selectedIndex != null) {
                    String selectedLanguage = languages[selectedIndex!];

                    Get.to(() => LoginScreen1());
                  }
                },
                buttonText: 'Select',
                prefix: Image.asset(AssetPath.logInIcon, height: 25.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}