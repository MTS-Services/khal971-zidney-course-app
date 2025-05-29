import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';
import '../widgets/custom_text_form_field.dart';
import 'otp_screen.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 150),
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpScreen()),
                    );
                  },
                  buttonText: 'Next',
                  suffix: Icon(
                    Icons.double_arrow_outlined,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 50),
                CustomButton(
                  onTap: () {},
                  buttonText: 'Have an account',
                  backgroundColor: AppColors.chocolate,
                  shadowColor: AppColors.chocolateShadow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
