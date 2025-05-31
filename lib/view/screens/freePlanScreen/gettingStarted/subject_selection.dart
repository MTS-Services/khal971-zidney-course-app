import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zidney/utils/asset_path.dart';

import '../../../widgets/custom_Conditional_buton.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_logo.dart';

class SubjectSelection extends StatefulWidget {
  const SubjectSelection({super.key});

  @override
  State<SubjectSelection> createState() => _SubjectSelectionState();
}

class _SubjectSelectionState extends State<SubjectSelection> {
  int secondRemaining = 30;
  bool enableResend = false;

  Timer? timer;
  int? selectedIndex;

  final List<String> subjects = [
    'Advance Math',
    'Life Sciences',
    'Physical Sciences',
    'Chemical Sciences',
    'Literature Studies',
    'Organic Chemistry',
    'Inorganic Chemistry',
  ];

  void startTimer() {
    setState(() {
      enableResend = false;
      secondRemaining = 30;
    });

    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondRemaining > 0) {
        setState(() => secondRemaining--);
      } else {
        setState(() => enableResend = true);
        timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: subjects.length,
                    itemBuilder: (context, index) {
                      return CustomConditionalButton(
                        buttonText: subjects[index],
                        prefix: Icon(Icons.language),
                        isSelected: selectedIndex == index,
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  prefix: Image.asset(AssetPath.logInIcon),
                  onTap: () {
                    if (enableResend) {
                      startTimer();
                    }
                  },
                  buttonText: enableResend
                      ? '4 more to start'
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
