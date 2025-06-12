import 'package:flutter/material.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  Widget buildStatCard(
    String title,
    String count,
    Color color,
    String iconPath,
  ) {
    return Expanded(
      child: Card(
        elevation: 4,
        color: color,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(iconPath, width: 24),
              ),
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
                    AssetPath.arrowIcon,
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
                  AppColors.primaryShadow,
                  AssetPath.appLogo,
                ),
                const SizedBox(width: 16),
                buildStatCard(
                  "Current Pro subscribers",
                  "500",
                  Colors.purple,
                  AssetPath.adminUser,
                ),
              ],
            ),
            const SizedBox(height: 32),

            const Text(
              "All subjects",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            /// Search + Add Subject Row
            Row(
              children: [
                Expanded(
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
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text("Add subject"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
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
