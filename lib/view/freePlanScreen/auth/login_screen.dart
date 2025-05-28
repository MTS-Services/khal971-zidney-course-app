import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_logo.dart';
import '../../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              CustomButton(
                onTap: () {},
                buttonText: 'Login',
                prefix: Icon(Icons.rocket_launch_rounded, color: Colors.white),
              ),
              SizedBox(height: 100),
              CustomButton(
                onTap: () {},
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
