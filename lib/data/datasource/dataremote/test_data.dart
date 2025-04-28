import 'package:ecommerce_proj/core/classe/constante/crud.dart';
import 'package:ecommerce_proj/link_api.dart';

class TestData {
  
  Crud crud ; 

  TestData(this.crud) ; 

  getData() async {
    var response = await crud.postData(AppLink.test, {});
    response.fold((l) => l, (r) => r) ; 
  }


}