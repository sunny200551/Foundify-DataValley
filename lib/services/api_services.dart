import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<List<dynamic>> getproducts() async {
    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to get products");
    }
  }

  Future<Map<String, dynamic>> addproduct({
    required String title,
    required String description,
    required double price,
    required String image,
    required String category,
  }) async {
    final response = await http.post(
      Uri.parse("https://fakestoreapi.com/products"),

      headers: {"Content-Type": "application/json"},

      body: jsonEncode({
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    }

    throw Exception("Failed to add product");
  }

  Future<void> deleteproduct(int id,) async {
    final response = await http.delete(
      Uri.parse("https://fakestoreapi.com/products/$id"),
    );
    if (response.statusCode != 200) {
      throw Exception("delete failed");
    }
  }
}
