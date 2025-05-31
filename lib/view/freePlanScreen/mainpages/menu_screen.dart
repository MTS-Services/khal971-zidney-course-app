import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/view/widgets/custom_container.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.09)),
              CustomContainer(
                height: AppStyles.screenHeightPercentage(context, 0.238),
                width: AppStyles.screenWidthPercentage(context, .490),
                borderRadius: BorderRadius.circular(20),
                image: AssetImage(AssetPath.menuImage),
              ),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.03)),
              Text(
                'Sophie',
                style: TextStyle(
                  color: AppColors.chocolate,
                  fontWeight: AppStyles.weightRegular,
                  fontSize: AppStyles.fontXXL,
                ),
              ),

              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.09)),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SvgPicture.asset(
                      AssetPath.personIcon,
                      height: AppStyles.screenHeightPercentage(context, .05),
                      width: AppStyles.screenWidthPercentage(context, .05),
                    ),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    'Personal Information',
                    style: TextStyle(
                      fontSize: AppStyles.fontM,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.chocolate,
                    ),
                  ),
                ],
              ),
              Divider(height: 2, color: AppColors.chocolate),

              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.01)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SvgPicture.asset(
                      AssetPath.securityIcon,
                      height: AppStyles.screenHeightPercentage(context, .05),
                      width: AppStyles.screenWidthPercentage(context, .05),
                    ),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    'Security',
                    style: TextStyle(
                      fontSize: AppStyles.fontM,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.chocolate,
                    ),
                  ),
                ],
              ),
              Divider(height: 2, color: AppColors.chocolate),

              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.01)),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SvgPicture.asset(
                      AssetPath.languageIcon,
                      height: AppStyles.screenHeightPercentage(context, .05),
                      width: AppStyles.screenWidthPercentage(context, .05),
                    ),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    'Language',
                    style: TextStyle(
                      fontSize: AppStyles.fontM,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.chocolate,
                    ),
                  ),
                ],
              ),
              Divider(height: 2, color: AppColors.chocolate),
              SizedBox(height: AppStyles.screenHeightPercentage(context, 0.01)),


              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SvgPicture.asset(
                      AssetPath.vector,
                      height: AppStyles.screenHeightPercentage(context, .05),
                      width: AppStyles.screenWidthPercentage(context, .05),
                    ),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    'Plans',
                    style: TextStyle(
                      fontSize: AppStyles.fontM,
                      fontWeight: AppStyles.weightRegular,
                      color: AppColors.chocolate,
                    ),
                  ),
                ],
              ),
              Divider(height: 2, color: AppColors.chocolate),
            ],
          ),
        ),
      ),
    );
  }
}
