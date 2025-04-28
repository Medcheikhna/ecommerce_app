

import 'package:ecommerce_proj/core/classe/statusrequest.dart';
import 'package:ecommerce_proj/core/function/handingdatacontroller.dart';
import 'package:ecommerce_proj/data/datasource/dataremote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController { 
  TestData testData = TestData(Get.find()) ; 

     List data = [];

  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(); 
    print("=============================== Controller $response ") ; 
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

}