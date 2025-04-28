
import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';

import '../../../data/datasource/static/static.dart';

class CustumDotController extends StatelessWidget {
  const CustumDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<OnBoardingControllerImp>(
      builder: (controller) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(microseconds: 900),
                          width: controller.currentpage == index ? 20 : 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ))
              ],
            )
          ],
        );
      },
    );
  }
}
