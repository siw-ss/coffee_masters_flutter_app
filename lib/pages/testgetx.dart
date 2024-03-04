import 'package:coffee_masters/controllers/getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestGetX extends StatelessWidget {
  const TestGetX({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:const Icon(Icons.arrow_back_ios, color: Colors.brown,)),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GetBuilder<TapController>(builder: (_){
                    return Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(controller.x.toString(), 
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                        ),),
                      ),
                    );
                    },
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.increaseX();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text("x ++", style: TextStyle(
                          fontSize: 20,
                        ),),
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.decreaseX();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text("x --", style: TextStyle(
                          fontSize: 20,
                        ),),
                      ),
                    )
                  ),
                ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() =>
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(controller.y.value.toString(), 
                        style:const TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                        ),),
                      ),
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: (){
                      controller.increaseY();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text("y ++", style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: (){
                      controller.decreaseY();
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text("y --", style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      ),
                    )
                  ),
                ]),
            ),
          ],
        ),
      ),
    );
  }
}