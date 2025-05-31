import 'package:flutter/material.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_container.dart';
import '../../../widgets/custom_dropdown.dart';
import '../../../widgets/custom_text_form_field.dart';

class PersonalInfo2 extends StatefulWidget {
  const PersonalInfo2({super.key});

  @override
  State<PersonalInfo2> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo2> {
  List<String> gender = ['Male', 'Female', 'Other'];
  List<String> classList = ['A level', 'O level', 'B level'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                CustomContainer(height: 250, width: 250),
                SizedBox(height: 10),
                CustomTextFormField(
                  labelText: 'Full Name',
                  hintText: 'example',
                ),
                CustomTextFormField(
                  labelText: 'Birth Date',
                  hintText: '@example',
                ),

                CustomDropdown(itemList: gender),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Educational info',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        labelText: 'Country Name',
                        hintText: 'example',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomTextFormField(
                        labelText: 'City Name',
                        hintText: 'example',
                      ),
                    ),
                  ],
                ),
                CustomTextFormField(
                  labelText: 'School Name',
                  hintText: 'example',
                ),
                CustomDropdown(itemList: classList),
                SizedBox(height: 20),
                CustomButton(
                  buttonText: 'Next',
                  suffix: Icon(Icons.double_arrow_outlined),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
