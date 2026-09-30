import 'package:flutter/material.dart';

import 'package:shopping_cart/models/product_model.dart';

class Cartprovider extends ChangeNotifier {
  final List<Productmodel> cartitems = [];
  void addTocart(Productmodel prodcts) {
    cartitems.add(prodcts);
    notifyListeners();
  }

  int get cartcount {
    return cartitems.length;
  }
}
