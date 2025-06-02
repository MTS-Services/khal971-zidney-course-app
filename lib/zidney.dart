import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/themdata.dart';
import 'package:zidney/view/auth/language_screen.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/all_quiz.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/many_part_qustion.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/quiz.dart';

class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllQuiz(),
      theme: themData(),
    );
  }
  }
