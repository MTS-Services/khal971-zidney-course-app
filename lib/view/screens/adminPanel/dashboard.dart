import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';
import 'package:zidney/view/screens/freePlanScreen/questionquiz/widgets/custom_button.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget buildStatCard(
    String title,
    String count,
    Color color,
    String iconPath,
  ) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: color,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor,
              offset: const Offset(0, 10),
            ),
          ],
        ),

        child: Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              Image.asset(iconPath, width: 70),

              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16)),
                  SizedBox(height: 5),
                  Text(
                    count,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSubjectCard(String title) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Total course: 20'),
            Text('Total topics: 150'),
            Text('Total Question: 500'),
            Text('Total Quiz: 600'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AssetPath.appLogo, width: 50),
                const Text(
                  "Admin Panel",
                  style: TextStyle(
                    fontWeight: AppStyles.weightRegular,
                    fontSize: 20,
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    AssetPath.adminUser,
                  ), // Replace with profile image if needed
                  radius: 20,
                ),
              ],
            ),
            const SizedBox(height: 32),

            /// Subscriber Stats Row
            Row(
              children: [
                buildStatCard(
                  "Current Free subscribers",
                  "2000",
                  Colors.orange.shade100,
                  AssetPath.freeLogo,
                ),
                const SizedBox(width: 16),
                buildStatCard(
                  "Current Pro subscribers",
                  "500",
                  Colors.purple.shade100,
                  AssetPath.premiumIcon,
                ),
              ],
            ),
            const SizedBox(height: 32),

            // const Text(
            //   "All subjects",
            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 16),

            /// Search + Add Subject Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // text //
                const Text(
                  "All subjects",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // search feild //
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                CustomButton(
                  width: AppStyles.screenHeightPercentage(context, 0.25),
                  onTap: () {},
                  buttonText: 'Add subject',
                  prefix: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 24),

            /// Subject Cards Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 2.5,
                children: const [
                  // You can loop with a List if dynamic
                  SubjectCard(title: 'Math'),
                  SubjectCard(title: 'Chemistry'),
                  SubjectCard(title: 'Biology'),
                  SubjectCard(title: 'Physics'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String title;
  const SubjectCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text('Total course: 20'),
            Text('Total topics: 150'),
            Text('Total Question: 500'),
            Text('Total Quiz: 600'),
          ],
        ),
      ),
    );
  }
}
