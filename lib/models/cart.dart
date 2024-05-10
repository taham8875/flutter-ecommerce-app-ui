import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/data/cart_items.dart';

class Cart extends ChangeNotifier {
  List<int> getCartItems() {
    return cartItems;
  }

  void addShoeToCart(int id) {
    cartItems.add(id);
    notifyListeners();
  }

  void removeShoeFromCart(int id) {
    cartItems.remove(id);
    notifyListeners();
  }
}