import 'package:get/get.dart';
import 'package:getx_sample_app/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(HomeController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
