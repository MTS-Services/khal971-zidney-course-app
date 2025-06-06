import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_background_image.dart';
import 'package:zidney/utils/common/custom_bottom_shape.dart';
import 'package:zidney/view/auth/login_screen1.dart';
import 'package:zidney/view/auth/otp_screen.dart';
import '../../utils/app_style.dart';
import '../screens/freePlanScreen/questionquiz/widgets/custom_button.dart';
import '../screens/freePlanScreen/questionquiz/widgets/custom_logo.dart';
import '../screens/freePlanScreen/questionquiz/widgets/custom_text_form_field.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          CustomBackground(image: AssetPath.appBackgroundPng),

          // Positioned bottom container
          CustomBottomShape(
            buttonText: 'Have an account',
            onTap: () {
              Get.to(() => LoginScreen1());
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLogo(
                  titleText: 'Welcome to Zidney',
                  subTitleText: 'Lets make learning easy and interesting!',
                ),
                CustomTextFormField(
                  hintText: 'example@gmail.com',
                  labelText: 'Email',
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      child: CustomTextFormField(
                        hintText: '+880',
                        labelText: 'code',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomTextFormField(
                        hintText: '123456789',
                        labelText: 'phone',
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(hintText: '*******', labelText: 'Password'),
                CustomButton(
                  width: AppStyles.screenHeightPercentage(context, 0.15),
                  onTap: () {
                    Get.to(() => OtpScreen());
                  },
                  buttonText: 'Next',
                  suffix: Icon(
                    Icons.double_arrow_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: AppStyles.screenHeightPercentage(context, 0.26),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
