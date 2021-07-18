import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginKey = GlobalKey();
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  onSubmit() {
    if (loginKey.currentState!.validate()) {
      Get.snackbar("Success",
          "${nameController.text.trim()} ${ageController.text.trim()}");
    }
  }

  @override
  void onClose() {
    // loginKey.currentState!.dispose();
    nameController.dispose();
    ageController.dispose();
    super.onClose();
  }
}
