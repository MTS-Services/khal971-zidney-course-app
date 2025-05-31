import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/viewmodels/controller/bottom_nav_controller.dart';
import 'package:zidney/zidney.dart';

void main() {
  Get.put(BottomNavController());
  runApp(const Zidney());
}


