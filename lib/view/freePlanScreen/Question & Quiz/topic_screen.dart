import 'package:flutter/material.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showTitle: true,
        title: 'Jabed',
        classTitle: 'Class',
      ),
      body: Scrollbar(child: Container()),
    );
  }
}
