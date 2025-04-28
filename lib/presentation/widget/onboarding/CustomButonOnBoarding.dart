// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';


class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  // Constructeur avec paramètre _pageController
  // ignore: use_super_parameters
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.next();
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(50),
        height: 50,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColor.primaryColor),
        child: Text(
          "8".tr,
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
