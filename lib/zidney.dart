import 'package:flutter/material.dart';
import 'package:zidney/utils/language/spunish.dart';
import 'package:zidney/view/screens/auth/language_screen.dart';

class Zidney extends StatelessWidget {
  const Zidney({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LanguageScreen());
  }
}
