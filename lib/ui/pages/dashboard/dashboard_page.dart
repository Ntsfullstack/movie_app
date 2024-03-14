import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/ui/pages/home_page/home_page.dart';
import 'package:movie_app/ui/pages/setting/setting_screen.dart';
import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IndexedStack(
        index: controller.tabIndex,
        children: [
          HomePage(),
          Setting_Screen(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        onTap: controller.changeTabIndex,
        currentIndex: controller.tabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
          _bottomNavigationBarItem(icon: CupertinoIcons.news, label: 'News'),
          _bottomNavigationBarItem(
              icon: CupertinoIcons.bell, label: 'Notifications'),
          _bottomNavigationBarItem(
              icon: CupertinoIcons.settings, label: 'Setting'),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
