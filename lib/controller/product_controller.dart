import 'package:flutter/material.dart';
import 'package:shopping_cart/models/product_model.dart';
import 'package:shopping_cart/services/api_services.dart';

class Productcontroller extends ChangeNotifier {
  final ApiServices apiServices = ApiServices();

  List<Productmodel> products = [];

  Future<void> fetchProducts() async {
    final data = await apiServices.getproducts();

    products = data.map<Productmodel>((item) {
      return Productmodel.fromJson(item);
    }).toList();

    notifyListeners();
  }

  Future<void> addproductsapi({
    required String title,
    required String description,
    required double price,
    required String category,
    required String image,
  }) async {
    final response = await apiServices.addproduct(
      title: title,
      description: description,
      price: price,
      category: category,
      image: image,
    );

    products.add(Productmodel.fromJson(response));

    notifyListeners();
  }

  Future<void> deleteproductsapi(int id) async {
    await apiServices.deleteproduct(id);

    products.removeWhere((product) => product.id == id);
    notifyListeners();
  }
}
