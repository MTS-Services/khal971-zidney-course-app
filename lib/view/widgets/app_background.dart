import 'package:flutter/material.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';

class AppBackground extends StatelessWidget {
  final Widget? child;
  final bool isScrollable;

  const AppBackground({
    super.key,
    this.child,
    this.isScrollable = false,
  });

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
        Positioned.fill(
          child: SafeArea(
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
        ),
      ],
    );
  }
}
