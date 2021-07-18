import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> homeKey = GlobalKey();
  final nameController = TextEditingController();
  final ageController = TextEditingController();

  onSubmit() {
    if (homeKey.currentState!.validate()) {
      Get.snackbar("Success",
          "${nameController.text.trim()} ${ageController.text.trim()}");
    }
  }

  @override
  void onClose() {
    super.onClose();
    // homeKey.currentState?.dispose();
    nameController.dispose();
    ageController.dispose();
  }
}
