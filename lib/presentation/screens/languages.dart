import 'package:flutter/material.dart';
import 'package:ecommerce_proj/presentation/widget/Languages/CustumButtLang.dart';
import 'package:get/get.dart';

import '../../core/constant/rootes.dart';

import '../../core/localisation/changelocal.dart';

class Languages extends GetView<LocaleController> {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            CustumButtonLang(
              textbutton: "Ar",
              onPressed: () async {
                print("hi in onboarding page..............");
                controller.changeLang("ar");
                Get.toNamed(AppRoute.onboarding);
                print("hi in onboarding page.....................");
              },
            ),
            CustumButtonLang(
              textbutton: "En",
              onPressed: () async {
                 controller.changeLang("en");
                Get.toNamed(AppRoute.onboarding);
                print("english...");
              },
            )
          ],
        ),
      ),
    );
  }
}
