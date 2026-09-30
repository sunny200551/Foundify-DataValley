// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:shopping_cart/controller/product_controller.dart';
// import 'package:shopping_cart/screens/addprodcts.dart';
// import 'package:shopping_cart/screens/product/product_details.dart';

// class ProductList extends StatelessWidget {
//   const ProductList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("List of Products")),
//       body: Consumer<Productcontroller>(
//         builder: (context, controller, child) {
//           return ListView.builder(
//             itemCount: controller.products.length,
//             itemBuilder: (context, index) {
//               final product = controller.products[index];
//               return ListTile(
//                 title: Text(product.name),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => ProductDetails(product: product),
//                     ),
//                   );
//                 },
//                 trailing: IconButton(
//                   onPressed: () {
//                     context.read<Productcontroller>().deleteproducts(
//                       product.id,
//                     );
//                   },
//                   icon: Icon(Icons.delete),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (_) => Addprodcts()),
//           );
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
