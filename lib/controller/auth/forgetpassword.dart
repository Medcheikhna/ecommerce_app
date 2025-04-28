import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/rootes.dart';

abstract class ForgetPassController extends GetxController {
  checkemail();
  goToVerfiyCode();
}

class ForgetPassControllerImp extends ForgetPassController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerfiyCode() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoute.verfiycode);
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
