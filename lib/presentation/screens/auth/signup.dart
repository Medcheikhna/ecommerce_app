import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';

import '../../../core/function/valideinput.dart';
import '../../widget/auth/custumTextFieldAuth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconTheme.of(context),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: GetBuilder<SignUpControllerImp>(
          builder: (controller) => Container(
            color: AppColor.white,
            alignment: Alignment.topRight,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Form(
              key: controller.formstate,
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  Text(
                    "10".tr,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "24".tr,
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  CustumTextFormAuth(
                      isNumber: false,
                      validator: (val) {
                        return validInput(val!, 3, 20, "username");
                      },
                      hinttext: "23".tr,
                      iconData: Icons.person_outline,
                      mycontroller: controller.username),
                  const SizedBox(height: 25),
                  CustumTextFormAuth(
                      isNumber: false,
                      validator: (val) {
                        return validInput(val!, 3, 40, "email");
                      },
                      hinttext: "12".tr,
                      iconData: Icons.email_outlined,
                      mycontroller: controller.email),
                  const SizedBox(height: 25),
                  CustumTextFormAuth(
                      isNumber: true,
                      validator: (val) {
                        return validInput(val!, 7, 11, "phone");
                      },
                      hinttext: "22".tr,
                      iconData: Icons.phone,
                      mycontroller: controller.phone),
                  const SizedBox(
                    height: 30,
                  ),
                  CustumTextFormAuth(
                    isNumber: false,
                      validator: (val) {
                        return validInput(val!, 3, 30, "password");
                      },
                      hinttext: "13".tr,
                      iconData: Icons.lock_outline,
                      mycontroller: controller.password),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.signUp();
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
                        "17".tr,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Divider(
                        height: 0,
                        thickness: 1,
                        color: AppColor.primaryColor,
                        indent: 2,
                      )),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("or")),
                      Expanded(
                          child: Divider(
                        height: 0,
                        thickness: 1,
                        color: AppColor.primaryColor,
                        indent: 2,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Social Media Sign Up",
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.apple,
                        size: 40,
                      ),
                      Icon(
                        Icons.android,
                        size: 40,
                      ),
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Already have an account?  ",
                        style: TextStyle(
                          color: AppColor.primaryColor,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "15".tr,
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          controller.goToSignIn();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
