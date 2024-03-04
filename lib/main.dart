import 'package:coffee_masters/datamanager/datamanager.dart';
import 'package:coffee_masters/pages/menupage.dart';
import 'package:coffee_masters/pages/offerspage.dart';
import 'package:coffee_masters/pages/orderpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class Greet extends StatefulWidget {
  const Greet({super.key});

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  var name = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hello $name !"),
        TextField(
          onChanged: (newValue) {
            setState(() {
              name = newValue;
            });
          },
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Your Name:",
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Coffee Masters',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  DataManager dataManager = DataManager();
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    late Widget currentPage;
    
    switch (_currentIndex) {
      case 0:
        currentPage = MenuPage(dataManager: dataManager);
        break;
      case 1:
        currentPage = const OffersPage();
        break;
      case 2:
        currentPage = OrderPage(dataManager: dataManager);
        break;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Image.asset("images/logo.png"),
      ),

      //-------body start-----------------
      body: currentPage,
      //--------body end-----------------

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 24,
        selectedItemColor: Colors.yellow.shade400,
        unselectedItemColor: Colors.brown.shade50,
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.coffee),
                label: 'Menu',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer),
                label: 'Offers',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), 
                label: 'Order'
            ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
