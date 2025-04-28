import 'package:ecommerce_proj/core/constant/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  void changeLang(String langCode) async {
    await myServices.sharedPreferences.setString("lang", langCode);

    language = Locale(langCode);
    appTheme = langCode == "ar" ? themeArabic : themeEnglish;

    Get.updateLocale(language!);
    Get.changeTheme(appTheme);

    update(); // Tell GetX that controller changed (optional but better)
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
