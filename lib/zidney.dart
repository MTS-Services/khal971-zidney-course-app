
import 'package:flutter/material.dart';
import 'package:zidney/view/freePlanScreen/auth/language_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/home_screen.dart';

class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(),
    );
  }
  }
