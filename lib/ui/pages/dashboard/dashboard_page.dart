import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/ui/pages/home_page/home_page.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [MyHomePage()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.cyan,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            _bottomNavigationBarItem(icon: CupertinoIcons.home, label: 'Home'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.heart, label: 'Favourite'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.ticket, label: 'Ticket'),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.shuffle, label: 'User'),
          ],
        ),
      );
    });
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      {required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
