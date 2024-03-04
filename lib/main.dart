import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/ui/pages/dashboard/dashboard_page.dart';
import 'package:movie_app/ui/pages/home_page/home_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: MyHomePage(),
      getPages: [
        GetPage(name: '/dashboard', page: () => DashboardPage()),
        // Add other pages as needed
      ],
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrap with MaterialApp
      title: 'My Flutter App',
      home: DashboardPage(),
    );
  }
}
