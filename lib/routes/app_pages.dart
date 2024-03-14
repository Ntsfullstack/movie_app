import 'package:get/get.dart';
import 'package:movie_app/routes/app_routes.dart';
import 'package:movie_app/ui/pages/dashboard/dashboard_binding.dart';
import 'package:movie_app/ui/pages/dashboard/dashboard_page.dart';
import 'package:movie_app/ui/pages/home_page/Home_binding.dart';
import 'package:movie_app/ui/pages/home_page/home_page.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    )
  ];
}
