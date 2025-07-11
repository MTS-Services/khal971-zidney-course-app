import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zidney/utils/themdata.dart';
import 'package:zidney/view/auth/language_screen.dart';
import 'package:zidney/view/screens/freePlanScreen/menusubpages/plans.dart';


class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themData(),
          home:  Plans(),
        );
      },
    );
  }
}
