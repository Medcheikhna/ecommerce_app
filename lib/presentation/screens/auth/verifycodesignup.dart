

import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verifycode_signup_controller.dart';

class Verifycodesignup extends StatelessWidget {
  const Verifycodesignup({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControllerImp controller =
        Get.put(VerifyCodeSignUpControllerImp());
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
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            const Text(
              "Verification Code",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const Text(
              "Please enter the digit Code Send To Med@gmail.com",
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            OtpTextField(
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
                controller.goToSuccessSignUp();
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(40),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColor.primaryColor),
                child: const Text(
                  "Check Code",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
