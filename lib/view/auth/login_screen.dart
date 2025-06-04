import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/view/auth/create_account_screen.dart';
import 'package:zidney/view/widgets/app_background.dart';

import '../freePlanScreen/mainpages/main_bottom_nav_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';
import '../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        isScrollable: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: AppStyles.heightXXL),
              CustomLogo(
                titleText: 'Welcome to Zedney',
                subTitleText: 'We missed you',
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'example@gmail.com',
                labelText: 'Email',
              ),
              CustomTextFormField(hintText: '*******', labelText: 'Password'),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.02)),
              CustomButton(
                width: AppStyles.screenHeightPercentage(context, 0.15),
                onTap: () {
                  Get.to(() => MainBottomNavScreen());
                },
                buttonText: 'Login',
                prefix: Image.asset(AssetPath.logInIcon, height: 25),
              ),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.18)),
              CustomButton(
                onTap: () {
                  Get.to(() => CreateAccountScreen());
                },
                buttonText: 'Create an Account',
                backgroundColor: AppColors.chocolate,
                shadowColor: AppColors.chocolateShadow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
