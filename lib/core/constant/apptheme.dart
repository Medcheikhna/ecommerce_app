
import 'package:ecommerce_proj/core/constant/appcolor.dart';
import 'package:flutter/material.dart';


ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme:  TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      displayMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.white,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: AppColor.white, fontSize: 14)),
  primarySwatch: Colors.blueGrey,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme:  TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
      displaySmall: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: AppColor.black),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.black,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: AppColor.white, fontSize: 14)),
  primarySwatch: Colors.blue,
);
