import 'package:flutter/material.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';

class AppBackground extends StatelessWidget {
  final Widget? child;
  final bool isScrollable;
  final bool showBottomImage;
  final bool showBgImage;

  const AppBackground({
    super.key,
    this.child,
    this.isScrollable = false,
    this.showBottomImage = true,
    this.showBgImage = true,
  });

  @override
  Widget build(BuildContext context) {
    final Widget backgroundImage = Positioned.fill(
      child: Image.asset(
        showBgImage ? AssetPath.appBackgroundSvg : AssetPath.appBackgroundtow,
        fit: BoxFit.cover,
      ),
    );

    return Stack(
      children: [
        backgroundImage,
        if (showBottomImage)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AssetPath.topBackgroundSvg,
              fit: BoxFit.fitWidth,
            ),
          ),

        SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final content = Padding(
                padding: AppStyles.paddingSymmetricXL,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: child ?? const SizedBox.shrink(),
                ),
              );
              return isScrollable
                  ? SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: content,
              )
                  : content;
            },
          ),
        ),
      ],
    );
  }
}
