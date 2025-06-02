import 'package:flutter/material.dart';
import 'package:zidney/utils/app_style.dart';

import '../../utils/asset_path.dart';

class CustomLogo extends StatelessWidget {
  final String? titleText;
  final String? subTitleText;
  const CustomLogo({
    super.key, this.titleText, this.subTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppStyles.heightL,
          width: AppStyles.widthL,
          child: Image.asset(AssetPath.appLogo),
        ),
        SizedBox(height: 10),
        Text(
          titleText!,
          style: TextStyle(
            fontSize: AppStyles.fontM, fontWeight: AppStyles.weightBold,),
        ),
        Text(
          subTitleText!,
          style: TextStyle(fontSize: AppStyles.fontM,),
        ),
      ],
    );
  }
}