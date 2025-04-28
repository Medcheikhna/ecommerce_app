import 'package:ecommerce_proj/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/rootes.dart';
import '../core/services/services.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  var currentpage = 0.obs;
  MyServices myServices = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentpage.value,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentpage.value = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
