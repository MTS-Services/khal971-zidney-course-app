/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/viewmodels/controller/progress_controller.dart';


class CustomProgressBar extends StatelessWidget {
  final double? width;
  final double height;
  final Color backgroundColor;
  final Color progressColor;

  CustomProgressBar({
    super.key,
    this.width ,
    this.height = 14,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    final ProgressController controller = Get.put(ProgressController(), permanent: false);

    return GestureDetector(
      onTapDown: (details) {
        final box = context.findRenderObject() as RenderBox;
        final localPosition = box.globalToLocal(details.globalPosition);
        final newProgress = (localPosition.dx / width).clamp(0.0, 1.0);
        controller.setProgress(newProgress);
      },
      child: Obx(() => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Container(
              width: controller.progress.value * width,
              height: height,
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/viewmodels/controller/progress_controller.dart';

class CustomProgressBar extends StatelessWidget {
  final double? width;
  final double height;
  final Color backgroundColor;
  final Color progressColor;

  // ✅ Controller ইনজেকশন constructor এর মাধ্যমে
  final ProgressController controller;

  CustomProgressBar({
    super.key,
    required this.controller, // controller এখন external থেকে পাঠাতে হবে
    this.width,
    this.height = 14,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        if (width == null) return; // null check
        final box = context.findRenderObject() as RenderBox;
        final localPosition = box.globalToLocal(details.globalPosition);
        final newProgress = (localPosition.dx / width!).clamp(0.0, 1.0);
        controller.setProgress(newProgress);
      },
      child: Obx(() => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Container(
              width: controller.progress.value * (width ?? 0),
              height: height,
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
