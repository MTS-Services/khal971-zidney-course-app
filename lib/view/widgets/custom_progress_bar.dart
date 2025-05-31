import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../viewmodels/controller/progress_controller.dart';

class CustomProgressbar extends StatelessWidget {
  final ProgressController controller = Get.put(ProgressController());

  final double? height;
  final double? width;
  final Color? progressColor;

  CustomProgressbar({super.key, this.height, this.width, this.progressColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        final box = context.findRenderObject() as RenderBox;
        final localOffset = box.globalToLocal(details.globalPosition);
        final tapX = localOffset.dx;
        final width = box.size.width;

        double tappedProgress = (tapX / width).clamp(0.0, 1.0);
        controller.setProgress(tappedProgress);
      },
      child: Obx(() {
        return Container(
          height: 6,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade300,
          ),
          child: Stack(
            children: [
              FractionallySizedBox(
                widthFactor: controller.progress.value,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown,
                  ),
                ),
              ),

            ],
          ),
        );
      }),
    );
  }
}
