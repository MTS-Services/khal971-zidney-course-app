import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zidney/stripe_services/stripe_services.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/custom_button.dart';

class Plans extends StatelessWidget {
  const Plans({super.key});

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
      // body //
      body: Center(
        child: Column(
          children: [
            //logo and title//
            SizedBox(height: 50),
            SvgPicture.asset(AssetPath.vector),
            SizedBox(height: 20),
            Text("Zidney Premium", style: AppTextStyle.bold20),

            //gap/
            SizedBox(height: 20),

            // first button //
            CustomButton(
              border: Border.all(width: 1, color: AppColors.secondaryColor),
              textColor: AppColors.secondaryColor,
              backgroundColor: Colors.white,
              width: 350,
              shadowColor: AppColors.secondaryShadow,
              onTap: () {
                print("tapped");
                StripeService.instance.makePayment();
              },
              buttonText: '3 months subscription only ${9.99}',
              height: 60,
              prefix: SvgPicture.asset(AssetPath.vector, height: 30, width: 30),
            ),

            //gap//
            SizedBox(height: 20),

            //second button//
            CustomButton(
              border: Border.all(width: 1, color: AppColors.secondaryColor),
              textColor: AppColors.secondaryColor,
              backgroundColor: Colors.white,
              width: 350,
              shadowColor: AppColors.secondaryShadow,
              onTap: () {},
              buttonText: '6 months subscription only ${54.99}',
              height: 60,
              prefix: SvgPicture.asset(AssetPath.vector, height: 30, width: 30),
            ),

            //gap//
            SizedBox(height: 20),

            // third button//
            CustomButton(
              border: Border.all(width: 1, color: AppColors.secondaryColor),
              textColor: AppColors.secondaryColor,
              backgroundColor: Colors.white,
              width: 350,
              shadowColor: AppColors.secondaryShadow,
              onTap: () {},
              buttonText: '1 year subscription only ${99.99}',
              height: 60,
              prefix: SvgPicture.asset(AssetPath.vector, height: 30, width: 30),
            ),
          ],
        ),
      ),
    );
  }
}
