import 'package:get/get.dart';
import 'package:getx_sample_app/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(LoginController());
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
