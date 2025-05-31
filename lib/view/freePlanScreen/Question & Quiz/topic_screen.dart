import 'package:flutter/material.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/custom_label.dart';
import 'package:zidney/utils/styles/app_text_styles.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomLabel(image: AssetPath.labelIcon, text: 'Life Sciences'),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (_, index) {
                  return QuestionContainer(
                    title: 'Biological Exploration',
                    subTitle: 'You are on : 10th',
                    showIcon: false,
                    imageIcon: AssetPath.labelIcon,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionContainer extends StatelessWidget {
  const QuestionContainer({
    super.key,
    required this.title,
    required this.subTitle,
    this.imageIcon = '',
    this.showIcon = false,
  });
  final String title;
  final String subTitle;
  final String imageIcon;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // CustomProgressBar(controller: controller)
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 15,
                children: [
                  if (showIcon) Image.asset(imageIcon, scale: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: AppTextStyle.bold14),
                      Text(subTitle, style: AppTextStyle.regular12),
                    ],
                  ),
                ],
              ),
              Image.asset(AssetPath.finishIcon, scale: 4),
            ],
          ),
        ),
      ],
    );
  }
}
