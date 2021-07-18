import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample_app/home/home_binding.dart';
import 'package:getx_sample_app/home/home_screen.dart';
import 'package:getx_sample_app/login/login_binding.dart';
import 'package:getx_sample_app/login/login_screen.dart';
import 'package:getx_sample_app/router.dart';
import 'package:getx_sample_app/signup/signup_binding.dart';
import 'package:getx_sample_app/signup/signup_screen.dart';
import 'package:getx_sample_app/translation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRouter.initial,
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      getPages: [
        GetPage(
          name: AppRouter.home,
          page: () => HomeScreen(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: AppRouter.login,
          page: () => LoginScreen(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: AppRouter.signup,
          page: () => SignupScreen(),
          binding: SignUpBinding(),
        ),
      ],
    );
  }
}
