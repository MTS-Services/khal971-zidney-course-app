import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import '../../utils/app_style.dart';

class CustomConditionalButton extends StatefulWidget {
  final VoidCallback onTap;
  final String buttonText;
  final Widget? child;
  final Widget? prefix;
  final Widget? suffix;
  final int? selectedIndex;
  final bool? isSelect;
  final Color backgroundColor;
  final Color shadowColor;
  final BorderRadius borderRadius;
  final Color textColor;

  const CustomConditionalButton({
    super.key,

    required this.onTap,
    this.child,
    this.backgroundColor = AppColors.primaryColor,
    this.shadowColor = AppColors.primaryShadow,
    this.borderRadius = AppStyles.radiusM,
    required this.buttonText,
    this.prefix,
    this.suffix,
    this.textColor = Colors.black,
    this.selectedIndex,
    this.isSelect,
  });

  @override
  State<CustomConditionalButton> createState() => _CustomConditionalButtonState();
}

class _CustomConditionalButtonState extends State<CustomConditionalButton> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelect = !isSelect;
          });
          widget.onTap;
        },
        child: Container(
          height: AppStyles.heightS,
          width: double.infinity,
          decoration:
          isSelect
              ? BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: widget.borderRadius,
            boxShadow: [
              BoxShadow(
                color: widget.shadowColor,
                offset: const Offset(0, 10),
              ),
            ],
          )
              : BoxDecoration(
            color: Colors.white,
            borderRadius: widget.borderRadius,
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: AppStyles.paddingM,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (widget.prefix != null) ...[
                  widget.prefix!,
                  const SizedBox(width: 10),
                ],
                Text(
                  widget.buttonText,
                  style: TextStyle(
                    fontWeight: AppStyles.weightBold,
                    fontSize: AppStyles.fontM,
                    color: isSelect ? Colors.white : widget.textColor,
                  ),
                ),
                if (widget.suffix != null) ...[
                  const SizedBox(width: 10),
                  widget.suffix!,
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
