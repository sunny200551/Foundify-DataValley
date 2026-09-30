import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/models/product_model.dart';
import 'package:shopping_cart/providers/cart_product.dart';
import 'package:shopping_cart/screens/cart/cart_screen.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.product});
  final Productmodel product;
  @override
  Widget build(BuildContext context) {
    // Productmodel product = Productmodel(id: 123, name: "Wallet");
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Image.network(
                "https://images.unsplash.com/photo-1530092285049-1c42085fd395?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3VtbWVyJTIwZmxvd2Vyc3xlbnwwfHwwfHx8MA%3D%3D",
                fit: BoxFit.cover,
              ),
              // child: Image.asset(product.images[selectedIndex],height: 250,width: double.infinity,),
            ),
            Text(product.name, style: const TextStyle(fontSize: 25)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<Cartprovider>().addTocart(product);
              },
              child: const Text("Add to cart"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CartScreen()),
                );
              },
              child: const Text("Open cart"),
            ),
          ],
        ),
      ),
    );
  }
}
