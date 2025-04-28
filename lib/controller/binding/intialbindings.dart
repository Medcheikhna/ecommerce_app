

import 'package:ecommerce_proj/core/classe/constante/crud.dart';
import 'package:get/get.dart';

class initialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud()) ; 
  }
}