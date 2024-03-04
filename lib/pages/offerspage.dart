import 'package:coffee_masters/controllers/getx_controller.dart';
import 'package:coffee_masters/pages/testgestx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    TapController controller = Get.put(TapController());

    return SizedBox(
      width: double.infinity,
      child: ListView(
        children: [
          Text(controller.x.toString()),
          GestureDetector(
              onTap: (){
                Get.to(()=> const TestGetX());
              },
              child: Container(
                margin: const EdgeInsets.all(50),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text("getx", style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
              )
            ),
        const Offer(
            title: "Early Coffee",
            description: "10% off. Offer valid from 6am to 9am."),
        const Offer(title: "Welcome Gift", description: "25% off on your first order"),
        const Offer(title: "Welcome Gift", description: "25% off on your first order"),
        const Offer(title: "Welcome Gift", description: "25% off on your first order"),
        const Offer(title: "Welcome Gift", description: "25% off on your first order"),
      ]),
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;

  const Offer({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2,
          color: Colors.amber.shade50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                        child: Container(
                      color: Colors.amber.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(title,
                            style: Theme.of(context).textTheme.headlineSmall),
                      ),
                    )),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        color: Colors.amber.shade50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(description,
                              style: Theme.of(context).textTheme.bodyLarge),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}