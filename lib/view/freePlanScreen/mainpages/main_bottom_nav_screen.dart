
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/view/freePlanScreen/mainpages/bookmark_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/home_screen.dart';
import 'package:zidney/view/freePlanScreen/mainpages/menu_screen.dart';
import 'package:zidney/viewmodels/controller/bottom_nav_controller.dart'; // <-- Controller import

class MainBottomNavScreen extends StatelessWidget {
  MainBottomNavScreen({super.key});

  final BottomNavController navController = Get.put(BottomNavController());

  final List<Widget> _screens = [
    HomeScreen(),
    BookmarkScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: _screens[navController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.chocolate,
        currentIndex: navController.selectedIndex.value,
        onTap: navController.changeIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/home_icon.png',scale: 3,color: navController.selectedIndex.value==0?AppColors.primaryColor:AppColors.chocolate,), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/bookmark_icon.png',scale: 3,color: navController.selectedIndex.value==1?AppColors.primaryColor:AppColors.chocolate,), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/menu_icon.png',scale: 16,color: navController.selectedIndex.value==2?AppColors.primaryColor:AppColors.chocolate,), label: ''),

        ],
      ),
    ));
  }
}
