import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/routes/app_pages.dart';
import 'package:movie_app/routes/app_routes.dart';
import 'package:movie_app/ui/pages/dashboard/dashboard_page.dart';
import 'package:movie_app/ui/pages/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.dashboard,
      getPages: AppPages.list,
    );
  }
}
