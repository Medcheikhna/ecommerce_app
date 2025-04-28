import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/rootes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController username;
  late TextEditingController phone;

  @override
  signUp() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verfiycodeSignUp);
    //  Get.delete<SignUpControllerImp>();
    } else {
      print("Not valide");
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
