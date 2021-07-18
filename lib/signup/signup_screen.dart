import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/signup/signup_controller.dart';
import 'package:getx_sample_app/validations.dart';

import '../router.dart';

class SignupScreen extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signup_screen".tr),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: controller.signupKey,
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
                    onPressed: () => Get.offNamed(AppRouter.login),
                    child: Text("login".tr),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.offNamed(AppRouter.home),
                    child: Text("home".tr),
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
      ),
    );
  }
}
