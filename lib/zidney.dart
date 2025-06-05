import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/themdata.dart';
import 'package:zidney/view/auth/language_screen.dart';
import 'package:zidney/view/auth/login_screen.dart';
import 'package:zidney/view/screens/freePlanScreen/gettingStarted/personal_info_screen.dart';
import 'package:zidney/view/screens/freePlanScreen/menusubpages/personal_info2.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/ad_for_free_user.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/all_questions.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/all_quiz.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/many_part_qustion.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/prol_question.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/quiz.dart';

class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      theme: themData(),
    );
  }
  }
