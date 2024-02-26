import 'package:coffee_masters/models/datamodel.dart';

class DataManager {
  List<Category>? _menu;
  List<ItemInCart> cart = [];

  cartAdd(Product p) {
    bool found = false;
    for (var item in cart) {
      if (item.product.id == p.id) {
        item.quantity++;
        found = true;
      }
    }
    if (!found) {
      cart.add(ItemInCart(product: p, quantity: 1));
    }
  }

  cartDelete(Product p) {
    cart.removeWhere((element) => element.product.id == p.id);
  }

  cartClear() {
    cart.clear();
  }

  double cartTotal() {
    var sum = 0.0;
    for (var item in cart) {
      sum += item.quantity * item.product.price;
    }
    return sum;
  }
}