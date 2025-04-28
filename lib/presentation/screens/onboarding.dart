import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/onboarding_controller.dart';

import '../widget/onboarding/CustomButonOnBoarding.dart';
import '../widget/onboarding/SliderCustumer.dart';
import '../widget/onboarding/doteController.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Text(
              "Skip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30, right: 20))
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(flex: 3, child: CustomSliderOnBoarding()),
              Expanded(flex: 1, child: CustumDotController()),
              SizedBox(
                height: 2,
              ),
              Expanded(flex: 1, child: CustomButtonOnBoarding())
            ],
          ),
        )

        // Radio(value: value, groupValue: groupValue, onChanged: onChanged)

        );
  }
}
