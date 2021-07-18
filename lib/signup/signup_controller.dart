import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final GlobalKey<FormState> signupKey = GlobalKey();
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  onSubmit() {
    if (signupKey.currentState!.validate()) {
      Get.snackbar("Success",
          "${nameController.text.trim()} ${ageController.text.trim()}");
    }
  }

  @override
  void onClose() {
    // signupKey.currentState!.dispose();
    nameController.dispose();
    ageController.dispose();
    super.onClose();
  }
}
