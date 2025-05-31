import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/view/screens/freePlanScreen/gettingStarted/personal_info_screen.dart';
import 'package:zidney/view/widgets/app_background.dart';
import '../../utils/app_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';
import '../widgets/custom_text_form_field.dart';


class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        isScrollable: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80),
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
                   Get.to(()=>PersonalInfo());
                },
                buttonText: 'Next',
                suffix: Icon(
                  Icons.double_arrow_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.26)),
              CustomButton(
                onTap: () {},
                buttonText: 'Have an account',
                backgroundColor: AppColors.chocolate,
                shadowColor: AppColors.chocolateShadow,
              ),
            ],
          ),
        ),
      )
    );
  }
}
