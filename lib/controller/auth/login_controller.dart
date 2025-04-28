import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/rootes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPass();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPass() {
    Get.toNamed(AppRoute.forgetpass);
  }
}
