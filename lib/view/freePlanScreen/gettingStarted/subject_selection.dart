import 'dart:async';

import 'package:flutter/material.dart';

import '../../widgets/custom_Conditional_buton.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_logo.dart';

class SubjectSelection extends StatefulWidget {
  const SubjectSelection({super.key});

  @override
  State<SubjectSelection> createState() => _SubjectSelectionState();
}

class _SubjectSelectionState extends State<SubjectSelection> {
  @override
  Widget build(BuildContext context) {
    int secondRemaining = 30;
    bool enableResend = false;

    Timer? timer;
    int? selectedIndex = 0;

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

    final List subjects = [
      'Advance Math',
      'Life Sciences',
      'Physical Sciences',
      'Chemical Sciences',
      'Literature Studies',
      'Organic Chemistry',
      'Inorganic Chemistry',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                CustomLogo(
                  titleText: 'Welcome to Zidney',
                  subTitleText: 'Pick 5 courses to get started!',
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: subjects.length,
                        itemBuilder: (context, index) {
                          return CustomConditionalButton(
                            buttonText: subjects[index], // why here show error
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
                  ],
                ),
                CustomButton(
                  onPressed: () {
                    if (enableResend) {
                      startTimer();
                    }
                  },
                  buttonText:
                      enableResend
                          ? 'Resend OTP'
                          : 'Resent OTP in ${secondRemaining}s',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
