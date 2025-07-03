import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:zidney/constants/constants.dart';
import 'package:zidney/viewmodels/controller/bottom_nav_controller.dart';
import 'package:zidney/zidney.dart';

void main() async{
  Get.put(BottomNavController());
 // _setup();
  runApp(const Zidney());
}


Future<void> _setup()async{
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey=stripePublishableKey;
}