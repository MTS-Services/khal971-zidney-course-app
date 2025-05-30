import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/view/freePlanScreen/mainpages/bookmark_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/dashboard_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/home_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/menu_screen.dart';
import 'package:zidney/viewmodels/controller/bottom_nav_controller.dart';

class MainBottomNavScreen extends StatelessWidget {
  MainBottomNavScreen({super.key});

  final BottomNavController navController = Get.put(BottomNavController());

  final List<Widget> _screens = [
    HomeScreen(),
    BookmarkScreen(),
    MenuScreen(),
    DashboardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // 🔥 Allow body to extend behind the bottom nav bar
        extendBody: true,

        body: _screens[navController.selectedIndex.value],

        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: AppColors.navigationColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: navController.selectedIndex.value,
              onTap: navController.changeIndex,

              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/home_icon.png',
                    scale: 3,
                    color:
                        navController.selectedIndex.value == 0
                            ? AppColors.primaryColor
                            : AppColors.chocolate,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/bookmark_icon.png',
                    scale: 3,
                    color:
                        navController.selectedIndex.value == 1
                            ? AppColors.primaryColor
                            : AppColors.chocolate,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/dashboard_icon.png',
                    scale: 3,
                    color:
                        navController.selectedIndex.value == 2
                            ? AppColors.primaryColor
                            : AppColors.chocolate,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/menu_icon.png',
                    scale: 16,
                    color:
                        navController.selectedIndex.value == 3
                            ? AppColors.primaryColor
                            : AppColors.chocolate,
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
