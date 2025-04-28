import 'dart:io';


import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle: const TextStyle(
          color: AppColor.primaryColor, fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      backgroundColor: Colors.white,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: const Text(
              "تاكيد",
              style: TextStyle(color: Color.fromARGB(255, 253, 252, 252)),
            )),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: const Text(
              "الغاء",
              style: TextStyle(color: Colors.white),
            ))
      ]);
  return Future.value(true);
}
