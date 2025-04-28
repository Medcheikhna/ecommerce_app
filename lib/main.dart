// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_proj/controller/binding/intialbindings.dart';
import 'package:ecommerce_proj/core/services/services.dart';
import 'package:flutter/material.dart';

//import 'package:ecommerce_proj/core/localisation/changelocal.dart';

import 'package:ecommerce_proj/root.dart';
import 'package:get/get.dart';

import 'core/localisation/changelocal.dart';
import 'core/localisation/transelation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,
      initialBinding: initialBindings(),
      title: 'Material App',
      // home: const Languages(),
      getPages: routes,
    );
  }
}
