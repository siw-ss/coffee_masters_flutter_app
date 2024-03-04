import 'package:coffee_masters/controllers/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestGetX extends StatelessWidget {
  const TestGetX({super.key});

  @override
  Widget build(BuildContext context) {
   // TapController controller = Get.put(TapController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.brown,)),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text("tap", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                ),
              )
            ),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text("tap", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                ),
              )
            ),
          ]),
      ),
    );
  }
}