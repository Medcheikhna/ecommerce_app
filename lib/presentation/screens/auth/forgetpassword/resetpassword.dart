import 'package:ecommerce_proj/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce_proj/core/constant/appcolor.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../core/function/valideinput.dart';
import '../../../widget/auth/custumTextFieldAuth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: AppColor.white,
        alignment: Alignment.topRight,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
        child: Form(
          key: controller.formstate,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              Text(
                "35".tr,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "35".tr,
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustumTextFormAuth(
                isNumber: false,
                  validator: (val) {
                    return validInput(val!, 3, 40, "password");
                  },
                  hinttext: "13".tr,
                  iconData: Icons.lock_outline,
                  mycontroller: controller.password),
              CustumTextFormAuth(
                isNumber: false,
                  validator: (val) {
                    return validInput(val!, 3, 40, "password");
                  },
                  hinttext:  " " + "13".tr,
                  iconData: Icons.lock_outline,
                  mycontroller: controller.repassword),
              GestureDetector(
                onTap: () {
                  controller.goToSuccessResetPassword();
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(40),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.primaryColor),
                  child: Text(
                    "33".tr,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
