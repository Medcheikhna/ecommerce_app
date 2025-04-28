import 'package:ecommerce_proj/controller/auth/forgetpassword.dart';
import 'package:ecommerce_proj/core/constant/appcolor.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';


import '../../../../core/function/valideinput.dart';
import '../../../widget/auth/custumTextFieldAuth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPassControllerImp controller = Get.put(ForgetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("14".tr),
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
                "14".tr,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                "29".tr,
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
                    return validInput(val!, 3, 40, "email");
                  },
                  hinttext: "12".tr,
                  iconData: Icons.lock_outline,
                  mycontroller: controller.email),
              GestureDetector(
                onTap: () {
                  controller.goToVerfiyCode();
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
                    "30".tr,
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
