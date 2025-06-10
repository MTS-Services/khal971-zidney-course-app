import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/themdata.dart';
import 'package:zidney/view/auth/login_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/dashboard_screen.dart';


class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      theme: themData(),
    );
  }
  }
