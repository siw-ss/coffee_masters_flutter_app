import 'package:coffee_masters/controllers/getx_controller.dart';
import 'package:coffee_masters/controllers/list_controller.dart';
import 'package:get/get.dart';

Future<void> init() async{
  Get.lazyPut(()=>TapController());
  Get.lazyPut(()=>ListController());
}