import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/view/widgets/custom_button.dart';

import '../../../../utils/app_style.dart';
import '../../../../utils/asset_path.dart';
import '../../../../utils/styles/app_text_styles.dart';
import '../../../widgets/app_background.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        showBgImage: false,
        isScrollable: true,
        showBottomImage: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.1)),
              Center(child: SvgPicture.asset(
                AssetPath.vector, width: 64, height: 64,)),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.02)),
              Text("Zidney Premium ", style: AppTextStyle.bold20),
              Text("Starts at \$9.99 only", style: AppTextStyle.regular16),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.05)),

              featureRow(
                  context, "Unlimited attempts", AssetPath.vectorInfinity),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.02)),

              featureRow(
                  context, "Access to all questions", AssetPath.accessIcon),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.02)),

              featureRow(
                  context, "Access to solutions", AssetPath.sulationIcon),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.02)),

              featureRow(context, "Priority support", AssetPath.priorityIcon),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.15)),
              CustomButton(
                width: AppStyles.screenWidthPercentage(context, 0.4),
                buttonText: "Get stared",
                backgroundColor: AppColors.secondaryColor,
                shadowColor: AppColors.secondaryShadow,
                prefix: Image.asset(AssetPath.logInIcon),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget featureRow(BuildContext context,
      String text,
      String imageAssetPath, {
        double iconWidth = 24,
        TextStyle? textStyle,
      }) {
    final isSvg = imageAssetPath.toLowerCase().endsWith('.svg');

    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isSvg
              ? SvgPicture.asset(imageAssetPath, width: iconWidth)
              : Image.asset(
            imageAssetPath, width: iconWidth, height: iconWidth,),
          SizedBox(width: AppStyles.screenWidthPercentage(context, 0.03)),
          Text(text, style: textStyle ?? AppTextStyle.bold14),
        ],
      ),
    );
  }
}
