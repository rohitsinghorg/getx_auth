import 'package:get/get.dart';
import 'package:getx_sample_app/signup/signup_controller.dart';

class SignUpBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(SignupController());
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
