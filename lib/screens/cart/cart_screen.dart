import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/providers/cart_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),
      body: Consumer<Cartprovider>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.cartitems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(cart.cartitems[index].name),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1530092285049-1c42085fd395?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3VtbWVyJTIwZmxvd2Vyc3xlbnwwfHwwfHx8MA%3D%3D",
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
