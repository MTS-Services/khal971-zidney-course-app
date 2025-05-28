import 'package:flutter/material.dart';

import '../../widgets/custom_Conditional_buton.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_logo.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomLogo(
                subTitleText: 'The one you are comfortable with ',
                titleText: 'Select Your language first',
              ),
              SizedBox(
                height: 500,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: languages.length,
                  itemBuilder: (context, index) {
                    return CustomConditionalButton(
                      buttonText: languages[index], // why here show error
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
                onPressed: () {
                  if (selectedIndex != null) {
                    String selectedLanguage = languages[selectedIndex!];
                    print('selected $selectedLanguage');
                  }
                },
                buttonText: 'Select',
                prefix: Icon(Icons.language_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
