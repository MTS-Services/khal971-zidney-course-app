import 'package:flutter/material.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/utils/common/custom_app_bar.dart';
import 'package:zidney/utils/common/custom_label.dart';
import 'package:zidney/utils/common/question_container.dart';

import '../../../widgets/custom_container.dart';

class AllQuiz extends StatelessWidget {
  const AllQuiz({super.key});

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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomLabel(image: AssetPath.labelIcon, text: 'The world of Molecules'),
            SizedBox(height: 20),
            Expanded(
              child: Scrollbar(
                thumbVisibility: true,
                thickness: 10,
                radius: Radius.circular(10),
                trackVisibility: true,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (_, index) {
                      /*return CustomContainer(
                        title: 'Biological Exploration',
                        subTitle: 'You are on : 10th',
                        trailIcon: AssetPath.finishIcon,
                      );*/
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
