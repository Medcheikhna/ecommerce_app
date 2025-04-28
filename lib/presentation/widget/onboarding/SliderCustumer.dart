
import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';

import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) =>
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(onBoardingList[index].image!),
              const SizedBox(
                height: 20,
              ),
              Text(
                onBoardingList[index].title!,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: AppColor.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(onBoardingList[index].body!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 2,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14)),
              const SizedBox(
                height: 20,
              ),
            ]));
  }
}
