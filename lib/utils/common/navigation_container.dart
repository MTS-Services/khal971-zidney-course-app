import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../viewmodels/controller/bottom_nav_controller.dart';
import '../app_colors.dart';

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({super.key, required this.navController});

  final BottomNavController navController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
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
                  color: navController.selectedIndex.value == 0
                      ? AppColors.primaryColor
                      : AppColors.chocolate,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bookmark_icon.png',
                  scale: 3,
                  color: navController.selectedIndex.value == 1
                      ? AppColors.primaryColor
                      : AppColors.chocolate,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/dashboard_icon.png',
                  scale: 3,
                  color: navController.selectedIndex.value == 2
                      ? AppColors.primaryColor
                      : AppColors.chocolate,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/menu_icon.png',
                  scale: 16,
                  color: navController.selectedIndex.value == 3
                      ? AppColors.primaryColor
                      : AppColors.chocolate,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
