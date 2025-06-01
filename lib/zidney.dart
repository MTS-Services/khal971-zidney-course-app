import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/themdata.dart';
import 'package:zidney/view/auth/language_screen.dart';


class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LanguageScreen(),
      theme: themData(),
    );
  }
}
