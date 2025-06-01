import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/themdata.dart';
import 'package:zidney/view/auth/language_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/main_bottom_nav_screen.dart';
import 'package:zidney/view/screens/freePlanScreen/gettingStarted/personal_info_screen.dart';
import 'package:zidney/view/screens/freePlanScreen/menusubpages/plans.dart';
import 'package:zidney/view/screens/freePlanScreen/menusubpages/security.dart';

class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersonalInfo(),
      theme: themData(),
    );
  }
}
