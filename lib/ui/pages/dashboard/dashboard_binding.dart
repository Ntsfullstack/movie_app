import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/ui/pages/home_page/home_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
