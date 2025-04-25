import 'dart:async';
import 'package:get/get.dart';
import 'package:doctor_listing/res/routes/routes_name.dart';
import 'package:doctor_listing/view_model/controllers/user_preferences_controller.dart';

class SplashServices {
  UserPreference userPreference = UserPreference();

  void isLogin() {
    userPreference.getUser().then((value) {
      if (value.token != null) {
        Get.toNamed(RoutesName.homeScreen);
      } else {
        Timer(const Duration(seconds: 2), () {
          Get.toNamed(RoutesName.signInScreen);
        });
      }
    });
  }
}
