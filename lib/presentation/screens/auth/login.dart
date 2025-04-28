import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:ecommerce_proj/core/function/alertapp.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/auth/login_controller.dart';

import '../../../core/function/valideinput.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtexttitle.dart';
import '../../widget/auth/custumTextFieldAuth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: Container(
            color: AppColor.white,
            alignment: Alignment.topRight,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Form(
              key: controller.formstate,
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  CustomTextTitleAuth(
                    title: "10".tr,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Customtextbodyauth(text: "11".tr),
                  const SizedBox(
                    height: 40,
                  ),
                  CustumTextFormAuth(
                    isNumber: false,
                    validator: (val) {
                      return validInput(val!, 5, 100, "email");
                    },
                    hinttext: "12".tr,
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                  ),
                  const SizedBox(height: 25),
                  CustumTextFormAuth(
                    obscureText: controller.isshowpassword,
                    isNumber: false,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    validator: (val) {
                      return validInput(val!, 5, 100, "password");
                    },
                    hinttext: "13".tr,
                    iconData: Icons.lock_outline,
                    mycontroller: controller.password,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.login();
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
                        "15".tr,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPass();
                    },
                    child: Text(
                      "14".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 15,
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
                    "Social Media Login",
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
                      Text(
                        "16".tr,
                        style: TextStyle(
                          color: AppColor.primaryColor,
                        ),
                      ),
                      InkWell(
                        onTap: (() {
                          controller.goToSignUp();
                        }),
                        child: Text(
                          "17".tr,
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
