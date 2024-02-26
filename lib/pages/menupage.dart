import 'package:coffee_masters/models/datamodel.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var p = Product(id: 1, name: "Dummy product", price: 1.25, image: "");
    return MenuItem(product: p, onAdd: ()=>{},);
  }
}

class MenuItem extends StatelessWidget {
  final Product product;
  final Function onAdd;
  const MenuItem({Key? key, required this.product, required this.onAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Image.asset("images/black_coffee.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("\$${product.price.toStringAsFixed(2)} ea"),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        onAdd(product);
                      },
                      child: const Text("Add"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}