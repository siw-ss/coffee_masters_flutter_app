import 'package:coffee_masters/controllers/getx_controller.dart';
import 'package:coffee_masters/controllers/list_controller.dart';
import 'package:get/get.dart';

class InitDep implements Bindings {
  @override
  void dependencies(){
    Get.lazyPut(()=>TapController());
    Get.lazyPut(()=>ListController());
  }
}