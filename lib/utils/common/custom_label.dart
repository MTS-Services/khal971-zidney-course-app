import 'package:flutter/material.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    required this.image,
    required this.text,
    this.showfilter = false,
    this.filterImage = AssetPath.filterIcon,
  });

  final String image;
  final String text;
  final bool showfilter;
  final String filterImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 20,
          children: [
            Image.asset(image, scale: 4),
            Text(text, style: AppTextStyle.bold16),
          ],
        ),
        if (showfilter) Image.asset(AssetPath.filterIcon, scale: 4),
      ],
    );
  }
}
