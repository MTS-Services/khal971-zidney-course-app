import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';

class CustomPremiumContainer extends StatelessWidget {
  const CustomPremiumContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, top: 27),
      child: Row(
        children: [
          SvgPicture.asset(AssetPath.vector),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zidney Premium',
                style: TextStyle(
                  fontSize: AppStyles.fontXL,
                  fontWeight: AppStyles.weightMedium,
                  color: AppColors.secondaryColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Unlimited Attempts",
                    style: TextStyle(
                      fontSize: AppStyles.fontM,
                      fontWeight: AppStyles.weightMedium,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  SvgPicture.asset(AssetPath.vectorInfinity),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
