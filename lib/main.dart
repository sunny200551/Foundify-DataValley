import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/controller/product_controller.dart';
import 'package:shopping_cart/providers/Themeprovider.dart';

import 'package:shopping_cart/providers/cart_product.dart';
import 'package:shopping_cart/providers/profileprovider.dart';
import 'package:shopping_cart/screens/home/home_screen.dart';

void main() {
  runApp(
    // ChangeNotifierProvider(create: (_) => Cartprovider(), child: const MyApp()),
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Cartprovider()),
        ChangeNotifierProvider(create: (_) => Themeprovider()),
        ChangeNotifierProvider(create: (_) => Profileprovider()),
        ChangeNotifierProvider(create: (_) => Productcontroller()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: context.watch<Themeprovider>().isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: HomeScreen(),
    );
  }
}
