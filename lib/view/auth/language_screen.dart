import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/view/auth/login_screen.dart';
import 'package:zidney/view/widgets/app_background.dart';
import '../../utils/asset_path.dart';
import '../widgets/custom_Conditional_buton.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';

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
        showBgImage: 2,
        isScrollable: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.1)),
              SizedBox(height: AppStyles.heightS),
              CustomLogo(
                subTitleText: 'The one you are comfortable with ',
                titleText: 'Select Your language first',
              ),
              SizedBox(
                height: AppStyles.screenHeightPercentage(context, 0.52),
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    return CustomConditionalButton(
                      isSelected: selectedIndex == index,
                      buttonText: languages[index],
                      prefix: Icon(Icons.language),
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  },
                ),
              ),
              CustomButton(
                width: AppStyles.screenHeightPercentage(context, 0.15),
                onTap: () {
                  if (selectedIndex != null) {
                    String selectedLanguage = languages[selectedIndex!];
                    print('selected $selectedLanguage');
                    Get.to(() => LoginScreen());
                  }
                }, //nothing
                buttonText: 'Select',
                prefix: Image.asset(AssetPath.logInIcon, height: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
