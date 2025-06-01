import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/view/screens/freePlanScreen/gettingStarted/subject_selection_screen.dart';
import 'package:zidney/view/widgets/app_background.dart';
import '../../../../utils/app_colors.dart';
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
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();

  final List<String> gender = ['Male', 'Female', 'Other'];
  final List<String> classList = ['A level', 'O level', 'B level'];

  String? selectedGender = "selected";
  String? selectedClass = "selected";

  @override
  void initState() {
    super.initState();
    selectedGender = gender.first;
    selectedClass = classList.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar //
      appBar: CustomAppBar(
        showTitle: true,
        title: "Sophie",
        classTitle: "Class",
        showAction: false,
      ),

      //body //
      body: AppBackground(
        showBottomImage: false,
        isScrollable: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Setup your profile Your  \n     to get started",
              style: TextStyle(
                fontSize: AppStyles.fontXXL,
                fontWeight: FontWeight.w400,
              ),
            ),

            CustomContainer(
              height: AppStyles.screenHeightPercentage(context, 0.25),
              width: AppStyles.screenWidthPercentage(context, 0.55),
            ),
            SizedBox(height: 15),
            CustomTextFormField(
              controller: userNameController,
              labelText: 'User Name',
              hintText: '@example',
            ),
            CustomTextFormField(
              controller: fullNameController,
              labelText: 'Full Name',
              hintText: '@example',
            ),
            CustomTextFormField(
              controller: birthDateController,
              labelText: 'Birth Date',
              hintText: 'DD/MM/YYYY',
            ),
            CustomDropdown(
              itemList: gender,
              selectedItem: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),

            const SizedBox(height: 30),
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
                    controller: countryController,
                    labelText: 'Country Name',
                    hintText: 'example',
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: CustomTextFormField(
                    controller: cityController,
                    labelText: 'City Name',
                    hintText: 'example',
                  ),
                ),
              ],
            ),
            CustomTextFormField(
              controller: schoolController,
              labelText: 'School Name',
              hintText: 'example',
            ),

            CustomDropdown(
              itemList: classList,
              selectedItem: selectedClass,
              onChanged: (value) {
                setState(() {
                  selectedClass = value;
                });
              },
            ),

            const SizedBox(height: 20),
            CustomButton(
              width: AppStyles.screenWidthPercentage(context, 0.25),
              buttonText: 'Next',
              suffix: const Icon(
                Icons.double_arrow_outlined,
                color: AppColors.lightPink,
              ),
              onTap: () {
                Get.to(() => SubjectSelection());
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    userNameController.dispose();
    fullNameController.dispose();
    birthDateController.dispose();
    countryController.dispose();
    cityController.dispose();
    schoolController.dispose();
    super.dispose();
  }
}
