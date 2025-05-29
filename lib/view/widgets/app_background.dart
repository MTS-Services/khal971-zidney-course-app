import 'package:flutter/material.dart';
import 'package:zidney/utils/asset_path.dart';

class AppBackground extends StatelessWidget {
  final Widget? child;

  const AppBackground({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AssetPath.appBackgroundSvg,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            AssetPath.topBackgroundSvg,
            fit: BoxFit.fitWidth,
          ),
        ),
        if (child != null) child!,
      ],
    );
  }
}
