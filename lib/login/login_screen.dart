import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/login/login_controller.dart';

import '../router.dart';
import '../validations.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login_screen".tr),
      ),
      body: Form(
        key: controller.loginKey,
        child: Column(
          children: [
            TextFormField(
              controller: controller.nameController,
              decoration: InputDecoration(
                hintText: "name".tr,
              ),
              validator: (value) => Validations.validateName(value!),
            ),
            TextFormField(
              controller: controller.ageController,
              decoration: InputDecoration(
                hintText: "age".tr,
              ),
              validator: (value) => Validations.validateAge(value!),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => controller.onSubmit(),
              child: Text("submit".tr),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => Get.offNamed(AppRouter.home),
                  child: Text("home".tr),
                ),
                ElevatedButton(
                  onPressed: () => Get.offNamed(AppRouter.signup),
                  child: Text("signup".tr),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () => Get.updateLocale(
                    Locale("en"),
                  ),
                  child: Text("English"),
                ),
                ElevatedButton(
                  onPressed: () => Get.updateLocale(
                    Locale("ar"),
                  ),
                  child: Text("Arabic"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
