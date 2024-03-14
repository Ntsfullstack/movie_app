import 'package:get/get.dart';
import 'package:movie_app/ui/pages/home_page/home_controller.dart';

class HomeBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
