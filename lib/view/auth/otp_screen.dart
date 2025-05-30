import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_logo.dart';
import '../widgets/custom_text_form_field.dart';
class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int secondRemaining = 30;
  bool enableResend = false;
  Timer? timer;

  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    enableResend = false;
    secondRemaining = 30;
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondRemaining > 0) {
        setState(() => secondRemaining--);
      } else {
        setState(() => enableResend = true);
        timer?.cancel();
      }
    });
  }

  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              SizedBox(height: 120),
              CustomLogo(
                titleText: 'Welcome to Zidney',
                subTitleText: 'Sent on OTP to ex********mail.com',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(child: CustomTextFormField()),
                    SizedBox(width: 20),
                    Expanded(child: CustomTextFormField()),
                    SizedBox(width: 20),
                    Expanded(child: CustomTextFormField()),
                    SizedBox(width: 20),
                    Expanded(child: CustomTextFormField()),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    backgroundColor: Colors.grey,
                    shadowColor: AppColors.greyShadow,
                    onTap: () {
                      if (enableResend) {
                        startTimer();
                      }
                    },
                    buttonText:
                        enableResend
                            ? 'Resend OTP'
                            : 'Resent OTP in ${secondRemaining}s',
                  ),
                  SizedBox(width: 30),
                  CustomButton(
                    onTap: () {},
                    buttonText: 'Verify',
                    suffix: Icon(
                      Icons.double_arrow_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_outlined),
                        SizedBox(width: 10),
                        Text('Edit Email'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
