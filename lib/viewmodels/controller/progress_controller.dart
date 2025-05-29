import 'package:get/get.dart';

class ProgressController extends GetxController {
  RxDouble progress = 0.4.obs;

  void setProgress(double value) {
    progress.value = value.clamp(0.0, 1.0);
  }
}
